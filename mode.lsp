(defun occurrences(list)
	(let ((table (make-hash-table)))
		(loop
			for i in list do
				(incf (gethash i table 0))
		)
		(sort (loop
			for j being the hash-key of table
				using (hash-value v)
				collect (cons j v)
		) #'>= :key #'cdr)
	)
)  

(setq numbers(list 1 2 3 4 5))

(occurrences numbers)
