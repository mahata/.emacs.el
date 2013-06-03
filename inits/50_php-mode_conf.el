(require 'php-mode)

(add-hook 'php-mode-hook
          (defun php-mode-hook ()
            (setq comment-start "// "
                  comment-end ""
                  comment-start-skip "// *")
            (setq-default indent-tabs-mode nil)
            (setq-default indent-level 4)
            (setq-default tab-width 4)
            ))
