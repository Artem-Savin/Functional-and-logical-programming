(format t "~%26) ~%Результат:~%")
(defun numAtoms (L)
    (if (not (null L))
        (+ 
        (if (consp (CAR L))
            (numAtoms(CAR L))
            1
        )
        (numAtoms (CDR L))
        )
        0
    )
)
(setq L '((a b) c ((d a v))))
(format t "   L=~A -> ~A~%" L (numAtoms L))