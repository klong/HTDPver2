;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |functions and programs 2-01b|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Exercise 22
(define (distance-to-origin x y)
  (sqrt (+ (sqr x) (sqr y))))
(distance-to-origin 3 4)

;; Exercise 23
(define(string-first str)
  (substring str 0 1))

(string-first "shaggy")

;; Exercise 24
(define (==> x y)
  (or (not x) y))

(==> #true #false)

;; Exercise 25
(define (image-classify img)
  (cond
    [(> (image-height img) (image-width img)) "tall"]
    [(= (image-height img) (image-width img)) "square"]
    [(< (image-height img) (image-width img)) "wide"]))

(require 2htdp/image)
(image-classify (rectangle 10 10 "solid" "red"))
(image-classify (rectangle 5 10 "solid" "red"))
(image-classify (rectangle 10 5 "solid" "red"))

;; Exercise 26
(define (string-insert s i)
  (string-append (substring s 0 (- i 1))
                 "_"
                 (substring s (- i 1))))

(string-insert "helloworld" 6)

