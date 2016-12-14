#method 1
arr = [24,1,2,56,72]
def search_array(arr, x)
	i = 0
	while i < arr.length
		if arr[i] == x
			return i
		end
		i += 1
	end
end
p search_array(arr, 1)

#method 2
arr = [24,1,2,56,72]
def search_array(arr, x)
	arr.each_index do 
		|number| if arr[number] == x
			return number
		end
	
end
end

p search_array(arr, 72)

#fib method
def fib(n)
	arr = [0, 1]
     i = 2
	while i < n
		arr << arr[-1] + arr[-2]
	i += 1	
	end
	p arr
end
fib(6)


#testing number
def fib(n)
	arr = [0, 1]
     i = 2
	while i < n
		arr << arr[-1] + arr[-2]
	i += 1	
	end
	arr
end
p fib(100).include? 218922995834555169026

#sorting alogrithmn
#create an array
a = [1,6,5,3,2,4,8,7]

def sorting(array)
	n = 0
		while n < array.length
		x = n + 1
		
	while x < array.length
		if array[n] > array[x]
			place = array[x]
			array[x] = array[n]
			array[n] = place
			x += 1
			else
			  x += 1
		end
	end
	n += 1
end

p	array
end
p sorting(a)


#compare the nth value xth value
#if xth value is less than nth value
#swap them
#set placeholder equal to xth value
# set xth value equal to nth value
#set nth value equal to placeholder
# n += 1
#x += 1
# 2 loops
