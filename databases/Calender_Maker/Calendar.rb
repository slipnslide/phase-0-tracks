# require gems
require 'sqlite3'
#require 'faker'
require 'date'


#create database
db = SQLite3::Database.new("Calender.db")
db.results_as_hash = true

#Table for appointments
create_appointments_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS appointments(
    id INTEGER PRIMARY KEY,
    appointment_name VARCHAR(255),
    type_of_appointment VARCHAR(255),
    date_of_appointment DATETIME,
    has_happened BOOLEAN
  )
SQL

db.execute(create_appointments_table_cmd)


#methods 
def create_appointment(db, name, type, date, happened)
  db.execute("INSERT INTO appointments (appointment_name, type_of_appointment, date_of_appointment, has_happened) VALUES (?, ?, ?, ?)", [name, type, date, happened])
end

def done(db, name)
  db.execute("UPDATE appointments SET has_happened='true' WHERE appointment_name = ?", [name])
end

#query options
def what_appointments(db)
  db.execute("SELECT appointments.appointment_name, appointments.date_of_appointment FROM appointments;")
end

def what_to_do(db)
  db.execute("SELECT appointments.appointment_name, appointments.date_of_appointment WHERE is_done = 'false';")
end

def get_id(db, name_of_appointment)
  db.execute("SELECT id FROM appointments WHERE appointment_name = ?", [name_of_appointment])
end
def left_to_do(db)
  appointments_left = db.execute("SELECT * FROM appointments WHERE has_happened = 'false';")
  appointments_left.each do |appointment|
    puts "#{appointment['appointment_name']} is on #{appointment['date_of_appointment']}."
  end
end

#Driver
puts "What Appointments do you have? (type 'Appointments' to add an Appointment or 'done' to see what you have to do!)"
answer = gets.chomp
while answer != "done"
  if answer == "Appointments"
    puts "Please enter a name for your Appointment"
    name = gets.chomp
    #puts "The name of your appointment is #{name}."
    puts "Please enter what type of appointment it is (Doctor Visit/Dental Cleaning)"
    type = gets.chomp
    #puts "The type of your appointment is #{type}."
    puts "When is this appointment? (Please use YYYY-MM-DD format)"
    date = gets.chomp
    #puts "The date of the event is #{date}."
    happened = "false"
    create_appointment(db, name, type, date, happened)
    puts "You have a #{type} appointment on #{date}"
    #puts what_appointments(db)
  else
    puts "You did something wrong.. Please Try again?"
  end
  puts "Would you like to create another appointment?? (If not type 'done')"
  answer = gets.chomp
end

puts "Do you want to print your list of appointments? (y/n)"
if gets.chomp == "y"
  print_appointments = db.execute("SELECT appointments.appointment_name, appointments.type_of_appointment, appointments.date_of_appointment FROM appointments;")
  print_appointments.each do |appointment|
    puts "#{appointment['appointment_name']} You have a #{appointment['type_of_appointment']} appointment on #{appointment['date_of_appointment']}."
  end
end

puts "Do you need to update any appointments?? (y/n)"
if gets.chomp == "y"
  puts "Which appointment did you want to update?"
  name = gets.chomp
  done(db, name)
  puts "#{name} is overwith, here are the appointments you still have left:"
  left_to_do(db)
end
