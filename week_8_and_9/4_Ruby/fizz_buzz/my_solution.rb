# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode

# define super_fizzbuzz (array)
# map array
# if element % 15 == 0 
#    fizzbuzz
# if element % 3 == 0
#    fizz
# if element % 5 == 0
#    buzz
# else 
#    element
# ENDIF

# 3. Initial Solution

def super_fizzbuzz(array)
  # Your code goes here!
  array.map do |x|
      if x % 15 == 0   
          "FizzBuzz"
      elsif
         x % 3 == 0
          "Fizz"
      elsif 
         x % 5 == 0
          "Buzz"
      else
         x  
      end
  end
end

# 4. Refactored Solution


# I'm not sure how to refactor my solution - if I did case, I would still need to write everything out, so I don't think that would be very efficient 
		



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def random_input_array(base, size)
  (1..size).map { |i| base**(1+rand(15)) }
end

p super_fizzbuzz(random_input_array(3,100)) === ["Fizz"]*100   
p super_fizzbuzz(random_input_array(5,100)) === ["Buzz"]*100
p super_fizzbuzz(random_input_array(15, 100)) === ["FizzBuzz"]*100
p super_fizzbuzz([1,2,3]) === [1,2,'Fizz']
p super_fizzbuzz([15, 5, 3, 1]) === ['FizzBuzz', 'Buzz', 'Fizz', 1]



# 5. Reflection 
# I have to be honest: I went back to my solution on Socrates for this one. I refactored it (instead of pushing the strings to an array, I just had the program map it to a temporary array). I enjoy fizzbuzz a lot - it's a logic problem. Not so much about syntax, just pure step-by-step logic. I like that stuff, and I remember when I figured this one out. I felt incredibly fantastic with it, and now as I look at it, it makes me happy that I can see what's actually happening and refactor it easily.

