/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
*/

VAR health = 5
VAR pet_name = ""
VAR Torches = 0  
VAR years = ""
VAR PronounPET = ""

-> Charactercreation
==Charactercreation==
lets see who you are! 
how old are ya? 
* [10 years old classic anime protag]
~years = "5"
-> memory
* [15 years old, sounds rough...] 
~years = "10"
-> memory
* [20 years old, we would never see you as a main character cause that's just too old!] 
~years = "15"
-> memory



-> memory
==memory==
what was the name of that pet? you know, the one you had? back when you were a little lad?

* [Venti]
~pet_name = "Venti" 
~PronounPET = "he"
-> cave_mouth
* [Raiden] 
~PronounPET = "she"
~pet_name = "Raiden" 
-> cave_mouth
* [Furina]  
~PronounPET = "she"
~pet_name = "Furina" 
-> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

Good job on passing this hard trial i know that {pet_name} would be so proud 

+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {Torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west, it's a dead end...
{pet_name == "venti": venti would love a drink here im sure of it...wait right he is a pet he can't do that!}
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
~ Torches = Torches + 1 
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> cont

== cont == 
this side is so silent...almost too silent but it should be fine right? 

Hmmm i wonder why you thought about your childhood pet....{pet_name}...what a lovely name...

you reached a door, a creepy scary gothic door...
* [knock on door]
-> nicesection

* [Open door] 
-> badsection 

==nicesection==
you knocked on the door 
a tall figure answers....is that {pet_name} in a trench coat? 
he barks at you...is this real? 
-> news

==badsection==
no body answers...
->cont

==news==
well...now you are in a cave and apparently your childhood dog has been living here for {years} years!{years == "15": why is {pet_name}'s house better than yours?} 
-> House 

==House==
You sit at the couch in {pet_name}'s house, {PronounPET} brings you a tray of cookies! and barks joyfully 
*[Take one]
-> goodending
*[Take all]
->badending 

==goodending==
Oh what a joyus time! the cookies remind you of such a happy life...you are so happy you finally wake up from your wacky dream 
->END 

==badending==
how greedy! your dog does not rememebr you being this gluttonous! {PronounPET} thinks you are a fake and bites you waking you up from this nightmare 
->END 

