# require gems
require 'sinatra'
require 'sqlite3'



set :public_folder, File.dirname(__FILE__) + '/static'
db = SQLite3::Database.new("students.db")
db.results_as_hash = true



db.execute(<<-SQL
 CREATE TABLE IF NOT EXISTS gpa(
   id INTEGER PRIMARY KEY,
   gpa INT
 )
SQL
)
=begin
db.execute(<<-SQL
 CREATE TABLE IF NOT EXISTS students_gpa(
   id INTEGER PRIMARY KEY,
   students_id INT,
   number_id INT,
   FOREIGN KEY (students_id) REFERENCES students(id),
   FOREIGN KEY (number_id) REFERENCES gpa(id)
 )
SQL
=end
# db.execute("ALTER TABLE students DROP gpa_id INT")
# db.execute("ALTER TABLE students ADD COLUMN gpa_id IF NOT EXISTS INT REFERENCES gpa(id);")

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  @gpa = db.execute("SELECT * FROM gpa")
  # @students_gpa = db.execute("SELECT * FROM students_gpa")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/gpa/new' do 
  erb :gpa
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources
# Release 0
post '/gpa' do 
  db.execute("INSERT INTO gpa (gpa) VALUES (?)", [params['gpa']])
  redirect '/'
end



















