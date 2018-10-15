;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |5.7 |) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; 5.7 - The Universe of Data

; Exercise 77

; A 12Number
; is a Integer between 1 and 12.

; A 60Number one of:
; is a Integer between 0 and 60.

; An Hour is a 12Number
; Interpretation: represents the hours in one AM or PM period.

; A Minute is a 60Number
; Interpretation: represents: the minutes possible in one hour.

; A Second is a 60Number
; Interpretation: represents the seconds possible in one minute.

(define-struct time [h m s])
; A TIME is a structure:
;   (make-time Hour Minute Second)

(define t1 (make-time 10 30 24))
(define t2 (make-time 8 12 0))

; Exercise 78

; A Letter is one of:
; -- 1Strings from a to z
; -- #false

; A ThreeWord is a structure:
;   (make-threeword Letter Letter Letter)

; Exercise 79

; A Color is one of:
; --- "white"
; --- "yellow"
; --- "orange"
; --- "green"
; --- "red"
; --- "blue"
; --- "black"

; example Colors
(define color1 "white")
(define color2 "blue")
(define color3 "black")

; H is a Number between 0 and 100.
; interpretation represents a hapiness value

(define H1 0)
(define H2 100)
(define H3 4.5)
(define H4 25/100)

(define-struct person [fstname lstname male?])
; A Person is a structure:
;   (make-person String String Boolean)

(define person1 (make-person "karl" "longoman" #true))
(define person2 (make-person "Yvonsku" "Davies" #false))

(define-struct dog [owner name age happiness])
; A Dog is a structure:
;   (make-dog Person String PositiveInteger H)
; where:
; owner is the person who looks after the dog,
; name is the dogs name, age is the dogs age and
; happiness is the value of the dogs happiness

(define doggo1 (make-dog person1 "Rex" 8 H1))
(define doggo2 (make-dog person2 "Fluff" 1 H2))
(define doggo3 (make-dog (make-person "Lol" "Timo" #false)
                         "Butch" 3 88))

; A Weapon is one of:
; --- #false
; --- Posn
; interpretation #false means the missile hasn't been fired yet;
; a Posn means it is in flight.

(define w1 #false)
(define w2 (make-posn 10 100))


