(defun conf-mode-hooks ()
  (setq indent-tabs-mode nil)
  (setq indent-level 4)
  (setq tab-width 4)
  (hs-minor-mode 1))

(add-hook 'conf-mode-hook 'conf-mode-hooks)
