# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge with Tyler Keating: Gentleman, Scholar

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years) 
  puts "LONGEST SERVING REPRESENTATIVES"
  puts $db.execute("SELECT name FROM congress_members WHERE years_in_congress > #{minimum_years}")
end

def print_lowest_grade_level_speakers
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
end

def print_state_reps
	puts "REPS FROM SPECIFIC STATES"
	puts $db.execute("SELECT name, location FROM congress_members WHERE location IN ('NJ', 'NY', 'AK', 'FL', 'ME')")
end

def print_num_votes
  puts "VOTES PER REP"
  puts $db.execute("SELECT name, COUNT(*) 
                    FROM congress_members JOIN votes ON (congress_members.id = votes.politician_id) 
                    GROUP BY name")
end

def print_voter_log
  puts "WHO VOTED FOR THESE PEOPLE?"
  puts $db.execute("SELECT name, group_concat(first_name, ,) group_c last_name)
                    FROM congress_members JOIN votes ON (congress_members.id = votes.politician_id) JOIN voters ON (voters.id = votes.voter_id)
                    GROUP BY name")
end


def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end


print_arizona_reps

print_separator

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers 
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

print_separator
print_state_reps
# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

print_separator
print_num_votes
# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)

print_separator
print_voter_log
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?  

#$db is essentially holding the database from the required file

# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  
# Try to explain this as clearly as possible for 
# your fellow students.  

# display the name of the congress members whose years in congress are greater than the year passed as an argument to the method
# execute simply performs a SQL command within ruby

# If you're having trouble, find someone to pair on this explanation with you.

# Pairing with Tyler (as I have many times in the past) was a breath of fresh air. He is a fantastic partner and very, very easy to talk problems out with. We couldn't nail down one of the bonus questions, but we got fairly close. When we got together to pair, Tyler had much of this assignment completed already, so he walked me through what he did and we moved onto the bonus. SQL is becoming easier for me to play around with, and I'm beginning to enjoy it more and more. Practice makes perfect.