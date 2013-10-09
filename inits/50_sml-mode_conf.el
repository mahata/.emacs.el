(when (require 'sml-mode nil t))

(defun sml-mode-hooks ()
  (setq indent-tabs-mode nil)
  (helm-gtags-mode t)
  (setq indent-level 2)
  (setq sml-indent-level 2)
  (setq c-basic-offset 2)
  (setq tab-width 2)
  (hs-minor-mode 1))

(add-hook 'sml-mode-hook 'sml-mode-hooks)
