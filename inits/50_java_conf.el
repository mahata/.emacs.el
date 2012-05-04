(add-hook 'java-mode-hook
          (defun java-mode-hook ()
            (setq-default indent-tabs-mode nil)
            (setq-default indent-level 4)
            (setq-default tab-width 4)
            ))
