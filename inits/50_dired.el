(add-hook 'dired-mode-hook
          (defun dired-mode-hook ()
            (define-key dired-mode-map (kbd "M-s") 'other-window-or-split)))
