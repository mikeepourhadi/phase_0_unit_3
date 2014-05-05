## Evaluate a Website! 
 
1) How does this website follow HTML Best Practices? Are there any places where 
it does not?  Provide examples of the "bad" code.

Hackenews seems to follow best practices fairly well. Everything is easy to read, and tags are semantic (aside from a few). My only complaints with the code are that there are a number of places where the styles are edited in-line. From what I understand, a vast majority of CSS should be in the stylesheet and not on the HTML. <tr style="height:5px"></tr> I also have no idea what tr is. So there's a bit of bad naming in there too, I suppose.
 
2) What do you think of the HTML? Did the writers use IDs and Classes properly? 

The HTML is fine. I don't particularly like the result, if that's what you're asking. The IDs and classes seem properly utilized - at least mostly. I think I see an ID that's used more than once. Woops, nevermind. The IDs are numbered in a bit of a strange way - makes them difficult to read. Otherwise, it seems that everything is 'used' properly.

Did you like the way they used HTML tags?  Please use examples with your arguments.

There are just a billion tables in this HTML. It seems like everything is in a table. For some reason, I don't like the use of HTML tags. I suppose I don't totally know why, but it just seems like a huge mess. It is pretty difficult to tell where everything is without looking at the classes. As I said, there are 'td' tags everywhere, so the only true way of locating certain things is to search through the class names.
 
3) How did the authors handle formatting? Did they include it in the HTML or 
separate it into a CSS file? Or did they do both?  Again, include examples.

They did both. There's inline CSS (that I mentioned before that I am not the biggest fan of). Inline stuff is easy, I think, but it can be pretty darn confusing if a programmer is trying to target a specific element to manipulate. The CSS file is actually quite small and fairly minimal in control - mostly coloring and font sizes. OH BY THE WAY, ALL THE SIZES ARE IN PIXELS. Not very mobile-friendly, eh? Otherwise, it seems pretty alright. I just have a gripe with divvying up the styling and formatting into multiple places.
 
4) Did the authors include anything you didn't immediately understand? 
If so, what?

Td and Tr tags - I had known about them already, but I suppose I forgot. Table tags. Noted. Many tables. Many. Otherwise, I think I have everything down pretty well. 
 
5) How did the authors organize the CSS file? Was it DRY?

It is not DRY. There are a number of classes that do the same darn thing and it gives me a little bit of a headache, I'll be honest. Who made this website? WHO? They should go back and fix it. ".comhead" and ".yclinks" ARE THE SAME CSS-WISE. FIX IT.
 
6) Did the authors incorporate any responsive design into the site?

Sort of. Everything is in pixels. And when I make the window smaller, nothing really happens to help, aside from the table rescaling. Everything jumbles pretty badly and continues my headache from the previous question. Look, I'm not professional, but I know what is. And this isn't.
 
7) What are your overall thoughts on the HTML/CSS from this website based on 
what you've read?

Refer to my previous sentence. The site isn't may favorite by any stretch. It does what it sets out to, but it seems thrown together. It's interesting to me that a website dedicated to hackers doesn't go about best practices all that thoroughly. It can be redone pretty quickly, I think, so it can be easier on the eyes of future programmers who have to mess around with it.