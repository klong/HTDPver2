;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |functions and programs 2-01|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (ff a)
  
  (* 10 a))

;; Exercise 11

(define (dist x y)
  (sqrt (+ (sqr x)
           (sqr y))))

;; Exercise 12

(define (cvolume ln)
  (* ln (sqr ln)))

(define (csurface ln)
  (* 6 (sqr ln)))

;; Exercise 13

(define (string-first str)
  (string-ith str 0))

;; Exercise 14

(define (string-last str)
  (string-ith str (- (string-length str) 1)))

;; Exercise 15

(define (=> sunny friday)
  (or (not sunny)
      friday))

;; Exercise 16

(require 2htdp/image)

(define (image-area img)
  (* (image-width img)
     (image-height img)))

;; Exercise 17
;(define laurel (rectangle 20 8 "solid" "red"))
;(define hardy (rectangle 10 44 "solid" "green"))
;(define boxy (rectangle 23 23 "solid" "blue"))
;
;(define (image-classify img)
;  (cond
;    [(= (image-height img)
;        (image-width img)) "square"]
;    [(> (image-width img)
;        (image-height img)) "wide"]
;    [(> (image-height img)
;        (image-width img)) "tall"]
;    [#true "unclassified"]))   
;; Tests
;(equal? (image-classify laurel) "wide")
;(equal? (image-classify hardy) "tall")
;(equal? (image-classify boxy)"square")

;; Exercise 18

(define (string-join a b)
  (string-append a "_" b))
;; Test
;(equal? (string-join "robot" "wars")
;        "robot_wars")

;; Exercise 19

(define (string-insert str i)
  (if (= (string-length str) 0)
      "_"
     (string-join (substring str 0 (+ i 1))
                  (substring str (+ i 1)))))

;; Exercise 20

(define (string-delete str i)
  (if (= (string-length str) 0)
      ""
      (string-append (substring str 0 i)
                     (substring str
                                (+ i 1)))))
;; Test

;(string-delete "" 9)
;(string-delete "0123456789" 0)
;(string-delete "0123456789" 1)
;(string-delete "0123456789" 2)
;(string-delete "0123456789" 3)
;(string-delete "0123456789" 4)
;(string-delete "0123456789" 5)
;(string-delete "0123456789" 6)
;(string-delete "0123456789" 7)
;(string-delete "0123456789" 8)
;(string-delete "0123456789" 9)

(ff (ff 1))