(require 'scala-mode)

(add-hook 'scala-mode-hook
          (function
           (lambda ()
             (setq-default indent-tabs-mode nil)
             (setq-default indent-level 4)
             (setq-default tab-width 4))))

(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
