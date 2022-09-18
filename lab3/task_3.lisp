(defun maplst (fun A)
    (cond
    ((null A) NIL)
    (T (cons (funcall fun A) (maplst fun (CDR A))))
    )
)
(setq A '(1 2 3 4 5))
(setq fun (function reverse))
(format t "   A=~A, fun=~A -> ~A~%" A fun (maplst fun A))
(setq A '(a b c))
(setq fun (function (lambda (x) (cons 0 x))))
(format t "   A=~A, fun=~A -> ~A~%" A fun (maplst fun A))