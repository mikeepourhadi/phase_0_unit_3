/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge with Tyler Keating (briefly)

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

var average = function(list) { 
  var sum = 0;
  for (var i = 0; i < list.length; i++) {
    sum += list[i];
  }
  return sum / list.length;
};

var gradebook = {
  "Joseph": {
    "testScores": scores[0]
  },
  "Susan": {
    "testScores": scores[1]
  },
  "William": {
    "testScores": scores[2]
  },
  "Elizabeth": {
    "testScores": scores[3]
  },
  addScore: function(name, score) {
    return this[name].testScores.push(score); 
  },
  getAverage: function(name) {
    return average(this[name].testScores);
  }
};





// __________________________________________
// Refactored Solution


// I think I can refactor my solution to create the gradebook object and populate it
// automatically, but I just can't quite figure it out





// __________________________________________
// Reflect

// This was a rough challenge for me, and I still have not managed to have all of the tests pass. Unfortunately, I can't find out what's wrong with my get average function. I will return to this assignment later in the week, time permitting, to see if I can figure it out. Also: I'm glad these JS challenges were here - it gives me a clearer perspective on how much I need to stay on top of practicing my work. I had completely forgotten JS syntax, so this challenge was a tough one for me overall.







// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
};

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)