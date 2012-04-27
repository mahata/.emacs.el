(defun toggle-indent-tabs-mode ()
  (interactive)
  (if indent-tabs-mode
      (progn
        (setq indent-tabs-mode nil)
        (message "indent with space"))
      (progn
        (setq indent-tabs-mode t)
        (message "indent with tab"))))

