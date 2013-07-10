#lang reader "clinical-sim-reader.rkt"

===VERBS===

north, n
 "go north"

south, s
 "go south"

east, e
 "go east"

west, w
 "go west"

up
 "go up"

down
 "go down"

in, enter
 "enter"

out, leave
 "leave"

get _, grab _, take _
 "take"

put _, drop _, leave _
 "drop"

open _, unlock _
 "open"

close _, lock _
 "close"

knock _

quit, exit
 "quit"

look, show
 "look"

inventory
 "check inventory"

help

save

load

time, timer
"time"

===EVERYWHERE===

quit 
 (begin
  (printf "Bye!\n")
  (exit))

look 
 (show-current-place)

inventory 
 (show-inventory)

save
 (save-game)

load
 (load-game)

help
 (show-help)

time
  (begin

    (printf "It's late.\n"))


===THINGS===

---door---
open 
      (begin
        (set-thing-state! door 'open)
        "The door is now unlocked and open.")

close
  (begin
   (set-thing-state! door #f)
   "The door is now closed.")

knock
  "No one is home."

---chart---

get
  (if (have-thing? chart)
      "You already have the chart."
      (begin
        (take-thing! chart)
        "You now have the chart."))

put
  (if (have-thing? chart)
      (begin
        (drop-thing! chart)
        "You have dropped the chart.")
      "You don't have the chart.")

---trophy---

get
  (begin
   (take-thing! trophy)
   "You win!")


---patient---

get
  (begin
   (take-thing! patient)
   "You win!")

===PLACES===

---clinic---
"You're in the clinic."
[]

out
  clinic-front

east
  exam-room

---clinic-front---
"You're outside the clinic."
[]

in
   clinic

---exam-room-door---
"You are standing before the exam room door"
[door, chart]

out
   clinic

in 
   exam-room

---exam-room---
"You are in the exam room"
[patient]

out
   exam-room-door






