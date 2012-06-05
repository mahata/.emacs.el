(eval-after-load "anything"
  '(define-key anything-map (kbd "C-h") 'delete-backward-char))

(setq anything-candidate-number-limit 30)
(setq anything-input-idle-delay 0.05)
(setq anything-idle-delay 0.001)
