# Machine
The Register-Machine Simulator in SICP which is implementd in Scheme.

## what is a Register-Machine(Simulator)
A Register-Machine consists of servral parts:
1. Registers
2. instruction-set consists of basic operations, such as "assign", "test", "branch","goto", "perform"...to realize certain
functions


        (assign ⟨register-name⟩ 
                (op ⟨operation-name⟩) 
                ⟨input₁⟩ … ⟨input⟩)
        (perform (op ⟨operation-name⟩) 
                 ⟨input₁⟩ 
                 … 
                 ⟨input⟩)
        (test (op ⟨operation-name⟩) 
              ⟨input₁⟩ 
              … 
              ⟨input⟩)
        (branch (label ⟨label-name⟩))
        (goto (label ⟨label-name⟩))
      
      
3. stack, to implement recursive procedures, Subroutines

4. Machine Interface, such as 

        (define (start machine) (machine 'start))

        (define (get-register-contents machine register-name)
           (get-contents (get-register machine register-name)))

        (define (set-register-contents! machine register-name value)
           (set-contents!(get-register machine register-name) value) 'done)

5. Assembler

Our assembler is able to interpreter register-level machine language, translate it into corresponding Scheme lambda procedures




             ((perform (op user-print) (reg val))    =>	 #[compound-procedure 12])   ;;lambda expressions

             ((goto (label read-eval-print-loop))    =>  #[compound-procedure 13])   ;;lambda expressions

             ((test (op self-evaluating?) (reg exp)) =>	 #[compound-procedure 14])   ;;lambda expressions

             ((branch (label ev-self-eval))          =>  #[compound-procedure 15])   ;;lambda expressions

             ((test (op variable?) (reg exp))        =>  #[compound-procedure 16])   ;;lambda expressions

             ((branch (label ev-variable))           =>  #[compound-procedure 17])   ;;lambda expressions

              .......

      
Notice that these lambda expressions are all with only formal arguments waiting to be feed into real value, which would 
not happen until we *Start Machine* 


## Running a Scheme Interpreter in our Register Machine Simulator
### 1. The instruction-set of Scheme Interpreter is contained in 

                EC-Evaluator-Controller.scm
        
### 2. How to run the interpreter in this Register Machine Simulator        
                     
step1. to make a new Machine:

                (define eceval
                 (make-machine
                   '(exp env val proc argl continue unev)
                     eceval-operations  
                        EC-EVALUATOR-CONTROLLER))
 
step2. Load the Machine into the Scheme system's REPL environment:

                        (load "EC-Evaluator")
                        
       
step3. Start the Machine and enter the scheme interpreter's REPL environment which is running in the Machine Simulator

                (start eceval)
                        
                ;;; EC-Eval input:
 
step4. Feed in some expressions and waiting for the result!

                ;;; EC-Eval input:
                (define (fac n)
                   (if (= n 1) 1 
                       (* (fac (- n 1)) n)))
                 
                ;;; EC-Eval value:
                ok!
                
                ;;; EC-Eval input:
                (fac 4)
                
                ;;; EC-Eval value:
                24
                 
