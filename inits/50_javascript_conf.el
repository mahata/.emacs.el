(defun js-mode-hook-func ()
  (setq-default indent-tabs-mode nil)
  (setq-default indent-level 4)
  (setq-default tab-width 4))

(add-hook 'js-mode-hook 'js-mode-hook-func)
