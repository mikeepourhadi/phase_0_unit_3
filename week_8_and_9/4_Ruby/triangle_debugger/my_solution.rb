# U3.W8-9: Triangle Debugger


# I worked on this challenge by myself


# 1. Original Solution

=begin
def valid_triangle?(a, b, c, sum)
  if a != 0 || b != 0 || c != 0
  if a >= b
  largest = a
  sum += b
  else largest = b
  sum += a
  end
  if c > largest
  sum += largest
  largest = c
  else sum += c
  end
  if sum > largest
  return "true"
  else return "false"
  end
  else return "false"
  end
end
=end

# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error?
# valid_tri should expect three arguments

# * what is the exact line number the error is appearing?
# Line 9

# * before you fix the bug, what do you think is causing the error?


# valid_triangle expects a,b,c and sum - sum shoundn't be there.

# --- Bug 2 ---
# * what is the exact description of the error?
# The booleans are strings
# * what is the exact line number the error is appearing?
# 23, 24, 26
# * before you fix the bug, what do you think is causing the error?
# The quotation marks around the booleans

# --- Bug 3 ---
# * what is the exact description of the error?
# The else statements are written poorly and seem to be taking arguments
# * what is the exact line number the error is appearing?
# 14, 20
# * before you fix the bug, what do you think is causing the error?
# Spacing for the if statements, which is an easy fix

# 3. Refactored Solution (Comment the other code to run this)
def valid_triangle?(a, b, c)
  # Your code goes here!
    if (c + b > a) && (a + c > b) && (a + b >c)
      true
    else
      false
    end
  
end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
p valid_triangle?(30, 40, 50) === true
p valid_triangle?(0,0,0) === false
p valid_triangle?(20, 20, 40) === false
p valid_triangle?(5,5,5) === true
p valid_triangle?(10, 10, 20) === true


# 5. Reflection 
# This wasn't too tough a challenge; though I am still interested in the logic of the one-line solution for this. On some level, it makes total sense (side-length comparisons and what-not), and I think I just need to consider it more fully. In any case, I enjoyed the debugging exercise, though looking at this code initially gave me a bit of a headache. I did realize a few things that I had not previously considered - like focusing on those important smaller details that I may overlook on a regular code run. Overall, I liked this challenge, and I look forward to doing more of it.



