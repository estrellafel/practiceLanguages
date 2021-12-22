#lang racket

(define (listify lst)
  (cond ((null? lst) lst)
        (else
         (cons (get-inc lst) (listify (remove-inc lst))))))

(define (get-inc lst)
  (cond ((null? lst) lst)
        ((null? (cdr lst)) (list (car lst)))
        ((> (cadr lst) (car lst)) (cons (car lst) (get-inc (cdr lst))))
        (else
         (list (car lst)))))

(define (remove-inc lst)
  (cond ((null? lst) lst)
        ((null? (cdr lst)) (car lst) `())
        ((> (cadr lst) (car lst)) (remove-inc (cdr lst)))
        (else
         (cdr lst))))

(define (my-len lst)
  (cond ((null? lst) 0)
        (else
         (+ 1 (my-len (cdr lst))))))

(define (my-rev lst)
  (cond ((null? lst) `())
        (else
         (append (my-rev (cdr lst)) (list (car lst))))))

(define (my-member lst x)
  (cond ((null? lst) #f)
        ((equal? (car lst) x) #t)
        (else
         (my-member (cdr lst) x))))

(define (my-filter lst fun)
  (cond ((null? lst) `())
        ((fun (car lst)) (cons (car lst) (my-filter (cdr lst) fun)))
        (else
         (my-filter (cdr lst) fun))))

(define (my-last lst)
  (cond ((null? lst) `())
        ((equal? (length lst) 1) (car lst))
        (else
         (my-last (cdr lst)))))

(define (list-append lst add-on)
  (cond ((null? lst) add-on)
        ((null? add-on) lst)
        (else
         (append lst add-on))))
         