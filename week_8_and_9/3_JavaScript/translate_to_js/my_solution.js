// U3.W8-9: Challenge you're converting : FIZZ BUZZ


// I worked on this challenge by myself

// 2. Pseudocode

// fizz_buzz (array)
// loop through the passed array
// if i is div. by 15
// FIZZBUZZ
// if i is div. by 3
// FIZZ
// if i is div by 5 
// BUZZ
// else pass i to array

// 3. Initial Solution
function superFizzBuzz(array){
	fizzArray = [];
	for (var i = 0; i < array.length; i++) {
		if (array[i] % 15 === 0) {
			fizzArray.push("FizzBuzz");
		}
		else if (array[i] % 3 === 0) {
			fizzArray.push("Fizz");
		}
		else if (array[i] % 5 === 0) {
			fizzArray.push("Buzz");
		}
		else fizzArray.push(array[i]);
	}
	return fizzArray;
}

// 4. Refactored Solution

// I'm not sure how to refactor this solution, as every part seems very necessary




// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
console.log(superFizzBuzz([3,15]));
console.log(superFizzBuzz([3,40, 35, 40, 10, 10]));
console.log(superFizzBuzz([10, 10, 10, 10, 10, 10, 10]));
console.log(superFizzBuzz([3,15]));
console.log(superFizzBuzz([3,15]));

// 5. Reflection 

// I enjoy the translation problems. What is frustrating me the most is driver tests in JS. I must have completely forgotten how to run them properly - I think I have just gotten so comfortable with Ruby that I can't think in JS correctly. So many brackets. SO MANY BRACKETS. Otherwise, this was fairly straight forward. A for loop, and indexing. Pretty typical JS work, and it was a simple one to hammer out!
