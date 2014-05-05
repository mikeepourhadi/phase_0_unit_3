// U3.W8-9: 


// I worked on this challenge by myself.

// 2. Pseudocode

/*
var groceryList

var addItem (item)
	grocerylist.push(item)	

var deleteItem (item)
	delete groceryList.item

var viewList 
	for var i = 0 in ... 
	console.log[i]
	iterate through, print each item

*/
// 3. Initial Solution

function groceryItem(item, price){
	this.item = item,
	this.price = price
};

addItem = function(item) {
	groceryList.push(item)
};
deleteItem = function(item){
	var index = groceryList.indexOf(item)
	groceryList.splice(index, 1)
};
viewList = function(){
	for (var i = 0; i < groceryList.length; i++) {
			console.log(groceryList[i].item + " will cost: $" + groceryList[i].price);
	}	
};

var groceryList = []
var pizza = new groceryItem('Pizza', 12.50);
var bread = new groceryItem('WonderBread', 2.00);
var whiskey = new groceryItem("Somethin' Fancy", 45.00);

addItem(pizza);
addItem(bread);
addItem(whiskey);
viewList();
deleteItem(pizza);
viewList();

// 4. Refactored Solution

/* I'm not sure how to refactor my solution, I will discuss this more in the reflection




// 5. Reflection 
/* Unfortunately, I feel like I did this wrong. I modeled it EXACTLY from my solution from week 7 with Natalie, but I couldn't figure out how to make local methods for the groceryList object. Basically, I flailed around for a little while and just couldn't end up getting it. JS is a lot harder than I remember, and I definitely need to refresh myself on this stuff. Hopefully in the next week, I can take a significant amount of time to play around with it. Thankfully, though, I managed to get this up and running (which makes me pretty happy). It's certainly not perfect, but it functions. 




