;;;; Frequency in %
(defun frequency (list)
	(let ((table (make-hash-table)))
		(loop
			for i in list do
				(incf (gethash i table 0))
		)
		(sort (loop
			for j being the hash-key of table
				using (hash-value v)
				collect (cons j (/ (* 100 v) (size list)))
		) #'>= :key #'cdr)
	)
) 
