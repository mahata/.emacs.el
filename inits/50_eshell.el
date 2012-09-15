(defun eshell-mode-hook-func ()
  (setq eshell-path-env (concat "/usr/local/bin:" eshell-path-env))
  (define-key eshell-mode-map (kbd "M-s") 'other-window-or-split))

(add-hook 'eshell-mode-hook 'eshell-mode-hook-func)
