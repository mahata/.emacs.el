(eval-after-load "anything"
  '(define-key anything-map (kbd "C-h") 'delete-backward-char))

(setq anything-candidate-number-limit 10)
(setq anything-input-idle-delay 0.01)
(setq anything-idle-delay 0.01)
