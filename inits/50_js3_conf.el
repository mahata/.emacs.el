(setq js3-mirror-mode t)
(autoload 'js3-mode "js3" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))

(defun js3-mode-hooks ()
  (setq js3-indent-level 4)
  (setq js3-mode-dev-mode-p t)
  (setq js3-auto-indent-p t)
  (setq js3-enter-indents-newline t)
  (setq js3-indent-on-enter-key t)
  (hs-minor-mode 1)
  (helm-gtags-mode t)
  (when (require 'auto-complete nil t)
    (make-variable-buffer-local 'ac-sources)
    (add-to-list 'ac-sources 'ac-source-yasnippet)
    (auto-complete-mode t)))

(add-hook 'js3-mode-hook 'js3-mode-hooks)

