;; cursor
(blink-cursor-mode 1) ;; let cursor blink

;; cursor line
(global-hl-line-mode 1)
;; (set-face-background 'hl-line "bisque")

;; frame
(add-to-list 'default-frame-alist '(cursor-color . "red"))
(add-to-list 'default-frame-alist '(foreground-color . "green"))
(add-to-list 'default-frame-alist '(background-color . "black"))
(add-to-list 'default-frame-alist '(width . 800))
;; (add-to-list 'default-frame-alist '(height . 600))

;; parenthesis
(show-paren-mode 1) ;; show corresponding parentheses

;; modeline
(display-time-mode 1) ;; show time on mode line
(set-face-foreground 'modeline "white") ;; set active modeline
(set-face-background 'modeline "red")   ;; set active modeline
(set-face-foreground 'mode-line-inactive "white") ;; set inactive modeline
(set-face-background 'mode-line-inactive "blue")  ;; set inactive modeline
(line-number-mode 1) ;; show line number

;; opacity
(add-to-list 'default-frame-alist '(alpha . 85))