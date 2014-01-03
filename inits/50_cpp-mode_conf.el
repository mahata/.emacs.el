(when (require 'c++-mode nil t))

(defun c++-mode-hooks ()
  (setq indent-tabs-mode nil)
  (helm-gtags-mode t)
  (setq indent-level 4)
  (setq sml-indent-level 4)
  (setq c-basic-offset 4)
  (setq tab-width 4)
  (hs-minor-mode 1))

(add-hook 'c++-mode-hook 'c++-mode-hooks)
