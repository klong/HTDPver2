;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |functions and programs 2-03|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/batch-io)

(define (letter fst lst signature-name)
  (string-append
   "\n"
   (opening  fst)
   "\n\n"
   (body fst lst)
   "\n\n"
   (closing signature-name)
   "\n\n"))

(define (opening fst)
  (string-append "Dear " fst ","))

(define (body fst lst)
  (string-append
   "We have discovered that all people with the" "\n"
   "last name " lst " have won our lottery. So, " "\n"
   fst ", " "hurry and pick up your prize."))

(define (closing signature-name)
  (string-append
   "Sincerely,"
   "\n\n"
   signature-name
   "\n"))

;
;(write-file 'stdout (letter "Matthew" "Fisler" "Felleisen"))
;(write-file 'stdout (letter "Kathi" "Felleisen" "Findler"))
;; Exercise 27

;; CONSTANTS

(define STANDARD-TICKET-PRICE 5.0) ;; in dollars
(define STANDARD-ATTENDENCE 120)
(define ATTENDENCE-CHANGE-PERCENT (* (/ 15
                                        STANDARD-ATTENDENCE)
                                     100/1))
(define PRICE-CHANGE-PERCENT (* (/ ATTENDENCE-CHANGE-PERCENT
                                   STANDARD-ATTENDENCE)
                                100/1))                      
(define FIXED-COST 0) ;; in dollars
(define ATTENTENCE-VARIABLE-COST 1.5) ;; in dollars

;; Functions

(define (attendees ticket-price)
  (- STANDARD-ATTENDENCE
     (* (* (- ticket-price
              STANDARD-TICKET-PRICE)
           PRICE-CHANGE-PERCENT)
        ATTENDENCE-CHANGE-PERCENT)))

(define (revenue ticket-price)
  (* ticket-price
     (attendees ticket-price)))

(define (cost ticket-price)
  (+ FIXED-COST (* ATTENTENCE-VARIABLE-COST
                   (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))


;(attendees 5)
;(profit 5)
;(profit 5.1)
;(profit 4.9)

;; Exercise 28

;(profit 1)
;(profit 2)
;(profit 3)
;(profit 4)
;(profit 5)

;; best profit is when ticket price is $3

;(profit 2.95)
;(profit 3)
;(profit 3.05)
;; to the dime best price is $2.95

;; Exercise 29
;; with no fixed cost and variable atentence cost of S1.50
;; best price to the dime is $3.65
(profit 3.65)

(define (C f)
  (* 5/9 (- f 32)))

(define (convert in out)
  (write-file out
     (string-append
      (number->string
       (C
        (string->number
         (read-file in))))
      "\n")))


(convert "sample.dat" "out.dat")

;; Exercise 31

(define (main in-fst in-lst in-signature out)
  (write-file out
              (letter (read-file in-fst)
                      (read-file in-lst)
                      (read-file in-signature))))

(write-file "firstName.dat" "Harry")
(write-file "lastName.dat" "Hill")
(write-file "signature.dat" "Presedente Kong")
(write-file "letter.dat" "")

(main "firstName.dat"
      "lastName.dat"
      "signature.dat"
      "letter.dat")

(write-file 'stdout
            (read-file "letter.dat"))








