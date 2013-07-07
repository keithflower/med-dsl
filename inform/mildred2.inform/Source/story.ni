"The Ring, the Gardener and the the Maid"

Book 1 - Setup
    
Include Conversation Framework by Eric Eve.

Instead of giving something to someone, try showing the noun to the second noun. 

jim-knows-ring is a truth state that varies. jim-knows-ring is false.

Book 2 - Scenario

Chapter 1 - The Dining Room

The Dining Room is a room. "Most of the room is taken up with a large wooden dining table. The only way out is to the south."

The large wooden dining table is a supporter in the Dining Room. It is scenery.

On the large wooden dining table is a gold ring. It is wearable.

Chapter 2 - Sarah

Sarah is a woman in the Dining Room. "Sarah is [if Sarah is the current interlocutor]standing by the table, looking at you[otherwise]busily polishing the table[end if]." The description is "She's a pretty young brunette."

Understand "pretty" or "young" or "woman" or "brunette" as Sarah.

After saying hello to Sarah when the greeting type is explicit:
    say "'Hello there!' you say.[paragraph break]'Hello!' she replies with a grin."

After saying hello to Sarah when the greeting type is implicit:
    say "'Excuse me', you say.[paragraph break]'Yes?' she asks."

Asking Sarah about something is Sarah-chatting.
    Telling Sarah about something is Sarah-chatting.

After quizzing Sarah about Sarah:
     say "'How are you, Sarah?' you ask.[paragraph break]'I am fine, thank you.' she assures you."

After quizzing Sarah about the gold ring when the gold ring is on the table:
     say "'Is that your ring?' you ask, nodding towards the table.[paragraph break]'No, I found it on the floor.' she tells you."

After quizzing Sarah about the gold ring when the player has the gold ring:
     say "'You don't mind if I take this ring then?' you ask.[paragraph break]'As long as you're only taking it to return it to its owner.' she replies."

After Sarah-chatting when the topic understood matches "[weather]":
     say "'Lovely weather today, don't you think?' you remark.[paragraph break]'Don't you have anything more interesting to talk about?' she complains."

After quizzing Sarah about the dining table:
     say "'Have you been polishing that table long?' you ask.[paragraph break]'Long enough.' she replies."

After saying goodbye to Sarah when the farewell type is explicit:
     say "Cheerio then,' you say.[paragraph break]'See you,' she replies."

After quizzing Sarah about Jim:
     say "'What do you think of Jim?' you ask.[paragraph break]'That's for me to know and you to find out,' she replies mysteriously."

After informing Sarah about Jim when the Garden is visited:
     say "'Well, Jim seems to be hard at work weeding,' you remark.[paragraph break]'He should try getting this table clean!' she replies."

After informing Sarah about the flower beds:
     say "'The flower beds are coming on nicely,' you remark.[paragraph break]'I'm sure Jim knows his job,' she replies."

After saying goodbye to Sarah when the farewell type is implicit:
     say "Sarah goes back to polishing the table."

After conversing when the noun is Sarah:
     say "She mutters something incomprehensible under her breath."

Understand "weather" or "the weather" as "[weather]".

Chapter 3 - The Hall

The Hall is south of the Dining Room. "This large bare hall has exits to north and east."

Chapter 4 - The Garden

The Garden is east of the Hall. "The front lawn is surrounded by flower beds. The way back into the hall is to the west."

Some flower beds are scenery in the Garden. The description is "They are shaping up nicely." 
    
Chapter 5 - Jim

Jim is a man in the Garden. "Jim is [if jim is the current interlocutor]standing by one of the flower beds, talking to you[otherwise]bent over over of the beds, busily weeding[end if]."

After saying hello to Jim when the greeting type is explicit:
     say "'Hello there, Jim!' you say.[paragraph break]Jim painfully straightens himself, hand on hip, then focus on you, grunting, 'Good afternoon!'"

After saying hello to Jim when the greeting type is implicit:
     say "You attract Jim's attention with a cough, and he straightens painfully to hear what you have to say."

After informing Jim about the gold ring when the gold ring is on the dining table:
     say "'I saw a gold ring on the dining table: is it yours?' you ask.[paragraph break]'It might be - can't say till I see it,' he grunts."

Instead of informing Jim about the gold ring when the player has the gold ring:
     try showing the gold ring to Jim.

Instead of showing the gold ring to Jim:
    if jim-knows-ring is true begin;
         say "'You're quite sure that ring isn't yours?' you ask.[paragraph break]'Quite sure,' he affirms.";
    otherwise;
     now jim-knows-ring is true;
     say "'Is this your ring?' you ask.[paragraph break]Jim takes one look at him and shakes his head, 'Nah, I wouldn't be seen dead wearing a poncy thing like that!' he declares.";
    end if.
         
Instead of quizzing Jim about the gold ring:
     try informing Jim about the gold ring.

After informing Jim about Sarah:
     say "'Sarah seems to be hard at work in the dining room,' you remark.[paragraph break]'Aye, she's a hard-working girl is that one,' Jim concurs."

After quizzing Jim about Sarah:
     say "'What do you think of Sarah?' you inquire.[paragraph break]'She's a bonny lass, that one!' he declares."

After telling Jim about "[weather]":
     say "'Nice weather today!' you remark.[paragraph break]'Bit hot for working in, if you ask me,' he replies, mopping his brow."

After asking Jim about "[weather]":
     say "'Do you reckon this weather will hold?' you ask.[paragraph break]'Nah, there'll be storms tonight, you mark my words,' he tells you."

After conversing when the noun is Jim:
     say "Jim mutters darkly under his breath."

After saying goodbye to Jim when the farewell type is explicit:
     say "'Well, goodbye then!' you say.[paragraph break]'Goodbye,' he grunts, turning back to the flower bed."

After saying goodbye to Jim when the farewell type is implicit:
     say "Jim waves at you and then returns to his weeding."

Book 3 - Testing - not for release

Test sarah with "Sarah, hello/a table/a weather/a ring/a jim/a love/a herself/bye/s"

Test jim with "e/ask jim about ring/ask jim about sarah/t sarah/a weather/t weather/w"

Test end with "hello/n/t jim/take ring/a ring/s/e/hello/t ring/a ring/jim, bye"

Test me with "test sarah/test jim/test end"