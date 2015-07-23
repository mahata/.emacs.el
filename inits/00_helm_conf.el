(eval-after-load "helm"
  '(define-key helm-map (kbd "C-h") 'delete-backward-char))

(setq helm-candidate-number-limit 30)
(setq helm-input-idle-delay 0.05)
(setq helm-idle-delay 0.001)

(require 'helm-config)
