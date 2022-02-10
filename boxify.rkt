;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname boxify) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

; the img creator
(define (img type size style color)

  (if (string=? type "square") 

      (square size style color)

      (if(string=? type "circle")

      (circle size style color)

      (if (string=? type "rectangle")

          (rectangle size (* size 2) style color)

          " "
          
          )
      )
  )
)

; the box around the img  
(define x (img "square" 100 "solid" "blue") )
(define y (square (+ (image-width x) 5) "solid" "white") )
(define z (square (+ (image-width x) 10) "solid" "black") )  


(overlay 
          x
          y
          z 
         )            