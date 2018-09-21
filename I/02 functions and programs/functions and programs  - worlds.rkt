;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |functions and programs  - worlds|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/universe)
(require 2htdp/image)

(define (number->square s)
  (square s "solid" "red"))

(number->square 5)
(number->square 10)
(number->square 20)


(define (reset st key-event)
  100)

;(big-bang 100
;  [to-draw number->square]
;  [on-tick sub1]
;  [stop-when zero?]
;  [on-key reset])

(define BACKGROUND (empty-scene 200 650))
(define DOT (circle 3 "solid" "red"))

(define (main y)
  (big-bang y
    [on-tick sub1]
    [stop-when zero?]
    [to-draw place-dot-at]
    [on-key stop]))

(define (place-dot-at y)
  (place-image DOT
               (/ (image-width BACKGROUND) 2)
               y\\
               BACKGROUND))
(define (stop y ke)
  0)

(main (image-height BACKGROUND))

