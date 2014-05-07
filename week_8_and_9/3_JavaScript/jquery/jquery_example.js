$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})

//RELEASE 1:
  //Add code here to select elements of the DOM 
 var bodyElement = $('body')

//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
  $('h1').css({'color': '#6E93B8', 'border': '2px solid white', 'visibility': 'visible'})
  $('.mascot h1').html('May Flowers!')
 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 
  $('img').on('mouseenter', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://www.freegreatimages.com/wp-content/uploads/2014/04/may-flowers-1.jpg')
  })
  $('img').on('mouseleave', function(e){
     e.preventDefault()
    $(this).attr('src', 'dbc_logo.jpg')
  })


 
//RELEASE 4 : Experiment on your own
 
 $('img').css({'border': '2px solid white'})
 $('img').click(function() {
   $('img').animate({
    opacity: 0.25,
    left: "+=20",
    height: "toggle"
  }, 5000, function() {
    // Animation complete.
  });
});
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
