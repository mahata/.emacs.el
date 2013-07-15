(eval-after-load "helm"
  '(define-key helm-map (kbd "C-h") 'delete-backward-char))

(setq helm-candidate-number-limit 30)
(setq helm-input-idle-delay 0.05)
(setq helm-idle-delay 0.001)

(setq helm-c-filelist-file-name "/var/tmp/all.filelist")

(require 'helm-config)
(require 'helm-gtags)

(add-hook 'helm-gtags-mode-hook
          '(lambda ()
             (local-set-key (kbd "M-t") 'helm-gtags-find-tag)
             (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
             (local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
             (local-set-key (kbd "C-t") 'helm-gtags-pop-stack)
             (local-set-key (kbd "C-c C-f") 'helm-gtags-find-files)))
