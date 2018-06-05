(load "assembler.scm")
(load "evaluator.scm")
(load "EC-EVALUATOR-CONTROLLER.scm")

(define eceval-operations
  (list (list 'self-evaluating? 
              self-evaluating?)
        (list 'variable? 
              variable?)
        (list 'quoted? 
              quoted?)
        (list 'text-of-quotation 
              text-of-quotation)
        (list 'tagged-list? 
              tagged-list?)
        (list 'assignment? 
              assignment?)
        (list 'assignment-variable 
              assignment-variable)
        (list 'assignment-value 
              assignment-value)
        (list 'definition? 
              definition?)
        (list 'definition-variable  
              definition-variable )
        (list 'definition-value  
              definition-value )
        (list 'lambda?  
               lambda? )
        (list 'lambda-parameters  
               lambda-parameters)
         (list 'lambda-body  
                lambda-body)
        (list 'make-lambda  
              make-lambda)
        (list 'if?  
              if?)
        (list 'if-predicate  
              if-predicate)
        (list 'if-consequent  
              if-consequent)
        (list 'if-alternative  
              if-alternative)
        (list 'make-if  
              make-if)
        (list 'begin?  
              begin?)
        (list 'begin-actions  
              begin-actions)
        (list 'last-exp?  
              last-exp?)
        (list 'first-exp  
              first-exp)
        (list 'rest-exps  
              rest-exps)
        (list 'sequence->exp  
              sequence->exp)
        (list 'make-begin  
              make-begin)
        (list 'application? 
              application?)
        (list 'operator 
               operator)
        (list 'operands 
               operands)
        (list 'no-operands? 
               no-operands?)
        (list 'first-operand 
               first-operand)
        (list 'rest-operands 
              rest-operands)
        (list 'cond? 
               cond?)
        (list 'cond-else-clause? 
               cond-else-clause?)
        (list 'cond-clauses 
               cond-clauses)
        (list 'cond-predicate 
               cond-predicate)
        (list 'cond-actions 
               cond-actions)
        (list 'cond->if 
               cond->if)
        (list 'expand-clauses 
               expand-clauses)
        (list 'true? 
               true?)
        (list 'false? 
               false?)
        (list 'make-procedure 
               make-procedure)
        (list 'compound-procedure?  
               compound-procedure? )
        (list 'procedure-parameters 
               procedure-parameters)
        (list 'procedure-body 
               procedure-body)
        (list 'rest-operands 
               rest-operands)
        (list 'procedure-environment 
               procedure-environment)
        (list 'enclosing-environment 
               enclosing-environment)
        (list 'first-frame 
               first-frame)
        (list 'the-empty-environment 
               the-empty-environment)
        (list 'make-frame 
               make-frame)
        (list 'frame-variables 
               frame-variables)
        (list 'frame-values 
               frame-values)
        (list 'add-binding-to-frame! 
               add-binding-to-frame!)
        (list 'extend-environment 
               extend-environment)
        (list 'lookup-variable-value 
               lookup-variable-value)
        (list 'set-variable-value! 
               set-variable-value!)
        (list 'define-variable! 
               define-variable!)
        (list 'setup-environment 
               setup-environment)
        (list 'primitive-procedure? 
               primitive-procedure?)
        (list 'primitive-implementation 
               primitive-implementation)
        (list 'primitive-procedure-names 
               primitive-procedure-names)
        (list 'primitive-procedure-objects 
               primitive-procedure-objects)
        (list 'meta-apply-primitive-procedure 
               meta-apply-primitive-procedure)
        (list 'prompt-for-input 
               prompt-for-input)
        (list 'announce-output 
               announce-output)
        (list 'user-print 
               user-print)
        (list 'read
               read)
  ))

;(define eceval
; (make-machine
;   '(exp env val proc argl continue unev)
;   eceval-operations  
;        EC-EVALUATOR-CONTROLLER))