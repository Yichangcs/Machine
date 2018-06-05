(load "assembler.scm")
(load "evaluator.scm")

(define eceval
  (make-machine
   '(exp env val proc argl continue unev)
   eceval-operations  
        EC-EVALUATOR-CONTROLLER))

(define eceval-operations
  (list (list 'self-evaluating? 
              self-evaluating)
        ;complete list of operations for eceval machine
  ))

