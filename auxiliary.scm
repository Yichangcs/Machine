(define (pretty-print x)
  (newline)
  (display "=>\t")
  (display x))

(define (display-line x)
   (newline)
   (display x))

(define (pretty-list seq)
  (map pretty-print seq))  