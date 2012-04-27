(add-hook 'javascript-mode-hook
          (defun javascript-mode-hook ()
            (setq-default indent-tabs-mode nil)
            (setq-default indent-level 4)
            (setq-default tab-width 4)
            ))
