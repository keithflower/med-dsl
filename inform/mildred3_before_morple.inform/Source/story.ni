"Mildred Christian" by "Judith A. Lubbers, M.D;  Inform version by Keith Flower."
Include Multimedia by The Vorple Project.



Include Vorple Core by The Vorple Project.
Include Conversation Framework by Eric Eve.
Include Conversation Responses by Eric Eve.
Include Punctuation Removal by Emily Short.

Release along with the "Vorple" interpreter.

When play begins: now the command prompt is "[time of day]> ".

The player carries a tongue-depressor, a stethoscope, a penlight.

[Figure of Mildred is the file "mildred.jpg".]
[Figure of Hallway is the file "clinic_small.jpg". [Creative Commons photo, John Khoo, 2012]
Sound of normal heartbeat is the file "normal_heartbeat.ogg". [University of Michigan]
Figure of Mildred's right fundus is the file "Fundus_normal_od_small.jpg". [Wikimedia]
Figure of Mildred's left fundus is the file "Fundus_normal_os_small.jpg". [Wikimedia]
Figure of Mildred's right eye is the file "brown_eye_small.jpg".
]
Mildred Christian is a person. 
Understand "Mildred/her/patient/pt" as Mildred.

Initial Encounter is a scene.
HPI is a scene.
PE is a scene.
Initial Encounter begins when the player is in the Clinic hallway.
Initial Encounter ends when the score is 2.
HPI begins when Initial Encounter ends.
PE begins when the score is 5.
The lexicon is a table name that varies. The lexicon is Table of Encounter Replies.

[Anatomy kinds of things]
A heart is a kind of thing. A heart is a part of every person.
An abdomen is a kind of thing. An abdomen is a part of every person.
An LUQ, RUQ, LLQ, RLQ is a kind of thing. An LUQ, RUQ, LLQ, RLQ is a part of every person. 
A left eye is a kind of a thing. A left eye is a part of every person.
A right eye is a kind of a thing. A right eye is a part of every person.
An eyes is a kind of thing. Eyes are a part of every person.
A limb is a kind of value. The limbs are left leg, left arm, right leg, right arm. Every person has limbs.
An ear is a kind of thing. An ear has a thing called a tympanum. An ear has a thing called a lobe. An ear is a part of every person.

Mildred can be sitting, supine, or standing.
Mildred is supine.

[Physiology kinds of things].

[Medical signs things].
A temperature is a kind of thing. A temperature is a part of every person.
A blood pressure is a kind of thing. A blood pressure is a part of every person.
A pulse is a kind of thing. A pulse is a part of every person.

[Understand "examine [any person] eyes" as examining.]
[Understand "examine [any person] abdomen" as examining.]
[Understand "examine [any person] left eye" as examining.]

Palpation is an action applying to one thing.

Auscultating is an action applying to one thing.
Taking blood pressure is an action applying to one thing.
Taking pulse is an action applying to one thing.
Sit is an action applying to one thing.
Lay is an action applying to one thing.
Stand is an action applying to one thing.
Taking temperature is an action applying to one thing.
Understand the command "listen" as something new.
Understand the command "take" as something new.
Understand the command "get" as something new.

Understand  "take [a person] blood pressure" or "take blood pressure" or "get [a person] blood pressure" as taking blood pressure.
Understand  "take [a person] temperature" or "take temperature" or "get [a person] temperature" as taking temperature.
Understand  "take [a person] pulse" or "take pulse" or "get [a person] blood pressure" as taking pulse.

Understand "[a person] sit up" as sit.
Understand "[a person] lay down" as lay.
Understand "[a person] stand up" as stand.
Carry out sit: now the noun is sitting.
Report sit: say "[noun] sits up."
Carry out lay: now the noun is supine.
Report lay: say "[noun] lays down."
Carry out stand: now the noun is standing.
Report stand: say "[noun] stands up."

Understand "auscultate [any person] heart" or "listen to [any person] heart" as auscultating.
Understand "os" as left eye.
Understand "od" as right eye.

Instead of taking blood pressure:
	say "100/68".

Instead of taking temperature:
	say "98.6F".

Instead of taking pulse:
	if Mildred Christian is supine:
		say "130";
	if Mildred Christian is standing:
		say "144";
	if Mildred Christian is sitting:
	    	say "142".

Instead of auscultating:
	if PE is happening:
		say "You put your stethoscope at the apex and hear…";
		play mp3 sound file "normal_heartbeat.mp3"  with ogg alternative "normal_heartbeat.ogg";
	otherwise:
		say "Don't you think you should get her history first?"

Instead of examining [any person] eyes:
	if PE is happening:
		display image "brown_eye_small.jpg";
		display image "Fundus_photograph_of_normal_left_eye.jpg";
		display image "Fundus_photograph_of_normal_right_eye.jpg";
	otherwise:
		say "Please get the history before examining Mildred".

Instead of examining [any person] left eye:
	if PE is happening:
		display image "Fundus_photograph_of_normal_left_eye.jpg";
	otherwise:
		say "Please get the history before examining Mildred".
 
Instead of examining [any person] right eye:
	if PE is happening:
		display image "Fundus_photograph_of_normal_right_eye.jpg";
	otherwise:
		say "Please get the history before examining Mildred".

Instead of examining [any person] abdomen:
	say "NT, ND, +BS".
	
When Initial Encounter begins:
	display image "clinic_small.jpg";
	now the lexicon is Table of Encounter Replies;
	continue the action.

When HPI begins:
	say "You enter the exam room.";
	now the lexicon is Table of HPI Replies;
	continue the action.
		
When PE begins:
	say "Ok, enough info - let's do an exam on the patient.";
	now the lexicon is Table of PE Replies;
	continue the action.
	
When Initial Encounter ends:
	say "Great, you got the initial information. Let's get some additional detail about the HPI".
	
To record (T - text) as achieved: 
	choose row with a reply of T in the lexicon; 
	if there is no time entry: 
		now time entry is the time of day; 
		increase the score by the points entry.

Instead of asking Mildred Christian to try doing something:
	repeat through the lexicon:
		if player's command includes topic entry:
			let x be reply entry;
			say "[reply entry][paragraph break]";
			record x as achieved;
			rule succeeds;
	say "'What?' says Mildred Christian."

[Asking someone about something is speech.]
[Asking someone for something is speech.]
Telling someone about something is speech.
Answering someone that something is speech.
	
Instead of speech when the noun is Mildred Christian:
	repeat through the lexicon:
		if the topic understood includes topic entry:
			let x be reply entry;
			say "[reply entry][paragraph break]";
			record x as achieved;
			rule succeeds;
	say "'Hmmf,' says Mildred Christian.".
	
[The topic understood is also a snippet, so that whenever one has been generated, we can treat it in the same way as "the player's command":]

A thing has some text called printing. The printing of a thing is usually "blank".
Understand the command "read" as something new. Understand "read [something]" as reading. Reading is an action applying to one thing, requiring light. Check reading: if the printing of the noun is "blank", say "Nothing is written on [the noun]." instead. Carry out reading: say "You read: [printing of the noun][line break]". Report reading: do nothing.

A Clinic hallway is a room. "It's your usual Wednesday at the West Berkeley Health Center. You are standing in the hallway outside an exam room."

A chart is a thing in the Clinic hallway.  The printing of chart is "[line break]  Mildred Christian[line break]  Age _____ [line break]  Pulse ______ [line break]  Blood pressure _______ [line break]  Temp________ [line break]  Nurses notes:  'Her boyfriend brought her here. He says she has the flu'".

There is a chart in the Clinic hallway.

After saying hello to Mildred when the greeting type is explicit:
	say "'Hello, Doctor.'"
	
Asking Mildred about something is Mildred-chatting.
Asking Mildred for something is Mildred-chatting.
Asking Mildred for something is Mildred-chatting.
Telling Mildred about something is Mildred-chatting.

Response of Mildred when asked for "age":
	increase the score by 1;
	say "I'm 22.".
	
After saying hello to boyfriend when the greeting type is explicit:
	say "'Hey doc, I'm just the boyfriend. You'll have to talk to Mildred.'"

A boyfriend is a kind of person. 

An Exam room is a room. "This is a standard clinic exam room.  There is an exam table and two chairs. Standard medical examination equipment is available here.". 

[An exam room contains an otoscope, a sphigmananometer, and an ophthalmoscope.]

Inside from the clinic hallway is the Exam room.
Understand the command "enter" as something new.
Understand  "enter" or "enter exam room" or "enter the exam room" or "go in exam room" or "go in the exam room" as inside.
Understand "leave exam room" or "leave the exam room" as outside.

After going to the Exam room for the first time:
	display image "mildred.jpg";
	continue the action.

Mildred Christian is in the Exam room. "Ms. Christian lies on the exam table shivering. She has a heavy down coat drawn up around her face. She seems uncomfortable, but is able to answer questions."
	
Table of Encounter Replies
topic	reply	time	points
"complaint"	"I've just been so sick, mainly sick to my stomach."	a time	1
"why are you here" or "why you are here" or "why did you come in" or "help" 	"I've just been so sick, mainly sick to my stomach."	a time	1
"age/old" or "her age" 	"I am 22 years old.'"	a time	1
"details"	"I've been throwing up all day. Whatever I eat goes right through me, and now I don't want to eat. My stomach hurts. "	a time	1	

Table of HPI Replies
topic	reply	time	points
"times vomited" or "times threw up"	"I threw up 3 times."	a time	1
"vomit look like" or "vomit appearance"	"Initially, it was undigested food, then green, bad tasting mucus."	a time	1
"vomit" or "vomiting" or "vomited" or "throw up" or "thrown up"	"I started throwing up about 8 hours ago."	a time	1
"blood in vomit" or "coffee grounds"	"I haven't thrown up anything like coffee grounds, nor bright red blood."	a time	1
"times have you had diarrhea" or "diarrhea frequency"	"At least every 1-2 hours."	a time	1
"diarrhea look like" or "diarrhea appearance"	"It looks like a brown to yellow, formless liquid."	a time	1
"diarrhea"	"I haven't thrown up anything like coffee grounds, nor bright red blood."	a time	1
"black stools" or "black or tarry stools" or "tarry"	"Nope."	a time	1
"how bad is the pain"	"It's about a 6 or 7 out of 10."	a time 	1
"where is the pain"	"It's worse on the left. (She points to the left side of her abdomen)."	a time 	1
"pain"	"It's been crampy, and it comes and goes."	a time 	1
"fever" or "chills"	"I have had fever and chills, but I don't own a thermometer, so I don't know how high"	a time	1



Table of PE Replies
topic	reply	time	points
"times vomited" or "times threw up"	"I threw up 3 times."	a time	1

[The following allows possessives to work and gets rid of unuseful punctuation].
After reading a command:
	remove stray punctuation; 
    	let X be indexed text;
    	let X be the player's command;
    	replace the text "[']s" in X with ""; 
    	change the text of the player's command to X.