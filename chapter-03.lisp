(defun make-cd (title artist rating ripped)
  (list :title title :artist artist :rating rating :ripped ripped))

(defvar *db* nil)

(defun add-record (cd) (push cd *db*))

(add-record (make-cd "311" "311" 10 t))
(add-record (make-cd "Morning View" "Incubus" 10 t))
(add-record (make-cd "S.C.I.E.N.C.E." "Incubus" 10 t))
(add-record (make-cd "Transistor" "311" 10 t))

(defun dump-db ()
  (dolist (cd *db*)
    (format t "~{~a:~10t~a~%~}~%" cd)))

;(defun dump-db () (format t "~{~{~a:~10t~a~%~}~%~}" *db*))
