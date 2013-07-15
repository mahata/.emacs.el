(defun html-mode-hooks ()
  (setq indent-tabs-mode t)
  (setq indent-level 4)
  (setq tab-width 4))

(add-hook 'html-mode-hook 'html-mode-hooks)
