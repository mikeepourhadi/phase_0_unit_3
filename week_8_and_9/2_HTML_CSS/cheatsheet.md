<html>
  <head>
  <title>JS Cheatsheet</title>
  <link rel="stylesheet" type="text/css" href="cheatsheet.css">
  <style type="text/css">
  pre {
    box-shadow: inset 0 0 10px #bbb;
    padding: 10px;
    width: 50%;
}

p {
  background-color: blue;
  margin: -14px;
  font-family: Helvetica;
  vertical-align: middle;
}
  </style>
  </head>
  <body>
<h1>Javascript Cheatsheet</h1>
<p>With Variables, remember to declare var or else it will be global scope.</p>

<p>Javascript Object literal notation.</p>
<pre>    
var cat = {
  color: 'black',
  legNumber: 4,
  weight: 20,
  species: 'feline'
};
</pre>

<p>Javascript Constructor notation</p>
<pre>
var cat = Object.new();
cat.color = "black";
cat.legNumber = 4;
cat["weight"] = 20;
cat["species"] = 'feline';
</pre>


<p>Use bracket or dot notaiton to get the values.</p>
<pre>
console.log(cat["weight"]) => '20'
console.log(cat.species) => 'feline'
</pre>

<p>Array literal notation.</p>  
<pre>
var animals = [cat, dog];
</pre>

<p>Array constructor notation</p>
<pre>
var animals = Array.new;
animals.push(cat);
animals[1] = dog;
</pre>

<p>Function creation</p>
<pre>
var countAnimals = function(array) {
  var count = 0;
  for (var i = 0; i < arr.length; i++) {
    count += 1;
  }
 return count;
}

function countAnimals(arr) {
  var count = 0;
  for (var i = 0; i < arr.length; i++) {
    count += 1;
  }
 return count;
}
</pre>

<p>Switch statement</p>
<pre>
switch(expression) {
case cat:
    console.log("Have some catnip!");
    break;
case dog:
    console.log("Have a treat!");
    break;
default:
    console.log("Nobody here but us chickens!");
} 
</pre>
  </body>
</html>