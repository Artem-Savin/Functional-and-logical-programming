(defun unionSets (A B)
    (cond 
    ((null A) B)
    ((null B) A)
    ((member (CAR A) B) (unionSets (CDR A) B))
    (T (cons (CAR A) (unionSets (CDR A) B)))
    )
)
(setq A '(1 2))
(setq B '(2 3 4 5))
(format t "   A=~A, B=~A -> ~A~%" A B (unionSets A B))
(setq A '(0 1 2 3 4 5 a))
(setq B '(5 4 3))
(format t "   A=~A, B=~A -> ~A~%" A B (unionSets A B))