(defun show-value (key hash-table)
  (multiple-value-bind (value present) (gethash key hash-table)
    (if present
        (format nil "Value ~a actually present." value)
        (format nil "Value ~a because key not found." value))))

(defparameter *h* (make-hash-table))
(setf (gethash 'foo *h*) 'bar)
(setf (gethash 'baz *h*) 'nil)
(show-value 'foo *h*)
(show-value 'baz *h*)
(show-value 'quux *h*)
