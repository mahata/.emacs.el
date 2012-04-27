(global-whitespace-mode 0)
(global-whitespace-mode 1)
(setq whitespace-style '(face tabs tab-mark spaces space-mark))

(defun toggle-global-whitespace-mode ()
  (interactive)
  (if global-whitespace-mode
    (global-whitespace-mode 0)
    (global-whitespace-mode 1)))
