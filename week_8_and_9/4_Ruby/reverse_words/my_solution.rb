# U3.W8-9: Reverse Words


# I worked on this challenge with past me from Socrates

# 2. Pseudocode

# METHOD reverse_words (string)
# chopped_array = string split
# chopped_array each
# 	reverse targeted element
# 	ENDEACH
# 	put string back together
# END

# 3. Initial Solution
def reverse_words(str)
	chopd = str.split
	chopd.each do |x|
  		x.reverse!
	end
	chopd.join(' ')
end

# 4. Refactored Solution

def reverse_words(str)
  str.split.each { |x| x.reverse! }.join(' ')
end

#this was fun

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def random_word(length = 5)
  rand(36**length).to_s(36)
end

p reverse_words("") === ""
 
  word = random_word
p reverse_words(word) === word.reverse

  word1 = random_word
  word2 = random_word
p reverse_words("#{word1} #{word2}") === "#{word1.reverse} #{word2.reverse}"

p reverse_words("Ich bin ein Berliner") === "hcI nib nie renilreB"



# 5. Reflection 

# I enjoyed this challenge quite a bit. Again, I admit I went to Socrates to check out my original solutions. I spent time figuring out the challenge again beforehand, then looked at my old solutions and implemented them as well. Turns out, I knew what I was doing back then. It made me pretty happy to go back and see that I actually got this problem down AND refactored it. Past Mikee knew future Mikee needed to tackle this problem again. I'm pretty happy with this one, and I'm pretty comfortable with all of the competencies. These problems are making me want to go back to Socrates and finish off all of those again. Which I might do.