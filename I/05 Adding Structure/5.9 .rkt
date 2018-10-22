;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |5.9 |) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; 5.9 - Structure in the World

; A SpaceGame is a structure:
;    (make-space-game Posn Number)
; Interp. (make-space-game (make-posn ux uy) tx)
; describes a game where the UFO location is at (ux,uy),
; and the TANK's x-coordinate is at x.

