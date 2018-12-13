#lang racket

(struct pit (snake goos))
(struct snake (dir segs))
(struct posn (x y))
(struct goo (loc expire))

(define snake-example 
    (snake "up" (list (posn 1 1) (posn 1 2) (posn 1 3))))
(define goo-example
    (list (goo (posn 1 0) 3) (goo (posn 5 8) 15)))
(define pit-example 
    (pit snake-example goo-example))
(pit
 (snake
  "up"
 (list (posn 1 1) (posn 1 2) (posn 1 3)))
(list
  (goo (posn 1 0) 3)
  (goo (posn 5 8) 15)))

(define (start-snake)
    (big-bang (pit (snake "right" (list (posn 1)))
                    (list (fresh-goo)
                          (fresh-goo)
                          (fresh-goo)
                          (fresh-goo)
                          (fresh-goo)
                          (fresh-goo)))
                (on-tick next-pit TICK-RATE)
                (on-key direct-snake)
                (to-draw render-pit)
                (stop-when dead? render-end))) 