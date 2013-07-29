(defun js-mode-hook-func ()
  (if (eq (getenv "USER") "mahata")
      (setq indent-tabs-mode nil)
      (setq indent-tabs-mode t))
  (helm-gtags-mode t)
  (setq-default indent-level 4)
  (setq-default tab-width 4))

(add-hook 'js-mode-hook 'js-mode-hook-func)
