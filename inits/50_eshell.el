(add-hook 'eshell-mode-hook
          (defun eshell-mode-hook ()
            (setq eshell-path-env (concat "/usr/local/bin:" eshell-path-env))
            (define-key eshell-mode-map (kbd "M-s") 'other-window-or-split)))
