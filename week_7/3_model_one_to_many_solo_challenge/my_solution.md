# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
<!-- Identify the fields Twitter collects data for -->
<ul>
	<li>Header image</li>
	<li>photo</li>
	<li>name</li>
	<li>tagline</li>
	<li>handle</li> 
	<li>location</li>
</ul>


## Release 1: Tweet Fields
<!-- Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter? -->
<ul>
	<li>Body</li>
	<li>Photo</li>
	<li>Location</li>
</ul>

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: one-to-many
<!-- because... -->
Users have many tweets, but a tweet only has one user.


## Release 3: Schema Design
<!-- Include your image (inline) of your schema -->
![schemas](imgs/solo_challenge.jpg "schemas")

## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->

* all the tweets for a certain user id

	SELECT tweets.id, body FROM users JOIN tweets ON users.id = user_id <br>
	WHERE ** USERID = ID ** <br>

* the tweets for a certain user id that were made after last Wednesday (whenever last Wednesday was for you)
	
	SELECT body FROM users JOIN tweets ON users.id = user_id <br>
	WHERE user_id = ** USER ** AND tweets.created_at > 2014-04-24 <br>

* all the tweets associated with a given user's twitter handle
	
	SELECT tweets.id, body FROM users JOIN tweets ON users.id = user_id <br>
	WHERE handle = ** HANDLE ** <br>

* the twitter handle associated with a given tweet id
	
	SELECT handle FROM users JOIN tweets ON users.id = user_id <br>
	WHERE tweets.id = ** DESIRED TWEET ID ** <br>

## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->

This was fun. Applying information that we learned to a real-world application is very effective for me when it comes to my learning. Really breaking down Twitter into fields and inputs gave a me a new perspective on the site as a whole, and it gave me some perspective on SQL statements. I'll be honest, I was taken somewhat by surprise with the SQL statements at the end. I'm glad they were there, though, as again it was helpful to have a direct example to real life instead of staying high level. At the end of the day, I think this challenge helped me learn SQL lite better than the rest of the challenges because I had to learn a few functions and apply them to something I could see in front of my face. I am confident in this exercise, aside form perhaps my schema design.