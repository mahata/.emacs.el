(defun java-mode-hooks()
  (setq-default indent-tabs-mode nil)
  (setq-default indent-level 4)
  (setq-default tab-width 4)
  (hs-minor-mode 1))

(add-hook 'java-mode-hook 'java-mode-hooks)
