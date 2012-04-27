;; buffer scroll
(defun scroll-n-lines-ahead (&optional n)
  "Scroll ahead N lines (1 by default)."
  (interactive "P")
  (scroll-up (prefix-numeric-value n)))
(defun scroll-n-lines-behind (&optional n)
  "Scroll behind N lines (1 by default)."
  (interactive "P")
  (scroll-down (prefix-numeric-value n)))

;; frame split
(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window-vertically))
  (other-window 1))

;; frame opacity
(defun increase-opacity (&optional n)
  "Increase opacity of the frame."
  (interactive "p")
  (modify-all-frames-parameters
   (list (cons 'alpha (+ (cdr (assoc 'alpha default-frame-alist)) n)))))
(defun decrease-opacity (&optional n)
  "Decrease opacity of the frame."
  (interactive "p")
  (modify-all-frames-parameters
   (list (cons 'alpha (- (cdr (assoc 'alpha default-frame-alist)) n)))))
