(defun leap-year-p (year)
  (destructuring-bind (fh h f)
    (mapcar #'(lambda (n) (zerop (mod year n))) '(400 100 4))
      (or fh (and (not h) f))))

(let ((n (read)))
  (format t "~D" (if (leap-year-p n) "yes" "no")))
