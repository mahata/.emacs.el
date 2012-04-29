(add-hook 'eshell-mode-hook
          (defun eshell-mode-hook ()
            (define-key eshell-mode-map (kbd "M-s") 'other-window-or-split)))
