"Mildred Christian"

Include Conversation Framework by Eric Eve.

When play begins: now the command prompt is "[time of day]>".

To record (T - text) as achieved: 
	choose row with a reply of T in the Table of Mildred Christian's Commentary; 
	if there is no time entry: 
		now time entry is the time of day; 
		increase the score by the points entry.

Instead of asking Mildred Christian to try doing something:
	repeat through Table of Mildred Christian's Commentary:
		if player's command includes topic entry:
			let x be reply entry;
			say "[reply entry][paragraph break]";
			record x as achieved;
			rule succeeds;
	say "'What?' says Mildred Christian."

[The topic understood is also a snippet, so that whenever one has been generated, we can treat it in the same way as "the player's command":]

Asking someone about something is speech.
Asking someone for something is speech.
Telling someone about something is speech.
Answering someone that something is speech.
Asking someone for something is speech.

	
Instead of speech when the noun is Mildred Christian:
	repeat through Table of Mildred Christian's commentary:
		if the topic understood includes topic entry:
			let x be reply entry;
			say "[reply entry][paragraph break]";
			record x as achieved;
			rule succeeds;
	say "'Hmmf,' says Mildred Christian."

A thing has some text called printing. The printing of a thing is usually "blank".
Understand the command "read" as something new. Understand "read [something]" as reading. Reading is an action applying to one thing, requiring light. Check reading: if the printing of the noun is "blank", say "Nothing is written on [the noun]." instead. Carry out reading: say "You read: [printing of the noun][line break]". Report reading: do nothing.

A Clinic hallway is a room. "It's your usual Wednesday at the West Berkeley Health Center. The nurse tells you about the next patient to see. 'Her name is Mildred Christian. Her boyfriend brought her here. He says she has the flu.'"

A chart is a thing in the Clinic hallway.  The printing of chart is "Mildred Christian, age _____, chief complaint, pulse ______".

There is a chart in the Clinic hallway.

A patient is a kind of person.
Mildred Christian is a patient.
Understand "Mildred", "her", "patient", "pt" as Mildred Christian.

After saying hello to Mildred when the greeting type is explicit:
	say "'Hello, Doctor.'"
	
Asking Mildred about something is Mildred-chatting.
    Telling Mildred about something is Mildred-chatting.

After saying hello to boyfriend when the greeting type is explicit:
	say "'Hey doc, I'm just the boyfriend.'"

A boyfriend is a person.

An Exam room is a room. "This is a standard clinic exam room.  There is an exam table and two chairs. Standard medical examination equipment is available here.".

Inside from the clinic hallway is the Exam room.

Mildred Christian is in the Exam room. "Ms. Christian lies on the exam table shivering. She has a heavy down coat drawn up around her face. She seems uncomfortable, but is able to answer questions."

boyfriend is in the Exam room. 
Understand "boyfriend", "boy", "friend", "man" as boyfriend.

Table of Mildred Christian's Commentary
topic	reply	time	points
"shuttle"	"'Shuttles! I hate shuttles,' Mildred Christian grumbles. 'Give me an airplane! AIRPLANE.'"	a time	1
"chief complain/complaint"	"'I've just been so sick, mainly sick to my stomach."	a time	1
"why she is here"	"'I've just been so sick, mainly sick to my stomach."	a time	1
"rations"	"'Do you think there are any peanuts in there?' she asks in a wistful tone."	a time	1
"age/old"	"'I am 22 years old.'"	a time	1
"tell me more/details/what's wrong"	"'I've been throwing up all day. Whatever I eat goes right through me, and now I don't want to eat. My stomach hurts. "	a time	1	



