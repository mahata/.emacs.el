;; cursor
(blink-cursor-mode 1) ;; let cursor blink

;; cursor line
(global-hl-line-mode 1)
;; (set-face-background 'hl-line "bisque")
(set-face-background 'hl-line "#220") ;; light yellow

;; frame
(add-to-list 'default-frame-alist '(cursor-color . "red"))
(add-to-list 'default-frame-alist '(foreground-color . "green"))
(add-to-list 'default-frame-alist '(background-color . "black"))
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(width . 140))
(add-to-list 'default-frame-alist '(font . "-apple-Monaco-medium-normal-normal-*-14-*-*-*-m-0-iso10646-1"))

;; toolbar
(tool-bar-mode -1)

;; parenthesis
(show-paren-mode 1) ;; show corresponding parentheses

;; modeline
(display-time-mode 1) ;; show time on mode line
(set-face-foreground 'mode-line "white") ;; set active modeline
(set-face-background 'mode-line "red")   ;; set active modeline
(set-face-foreground 'mode-line-inactive "white") ;; set inactive modeline
(set-face-background 'mode-line-inactive "blue")  ;; set inactive modeline
(line-number-mode 1) ;; show line number
(column-number-mode t) ;; show column number

;; opacity
(add-to-list 'default-frame-alist '(alpha . 85))

;; font (Maverick has weird default font setting for Japanese)
(set-fontset-font nil 'japanese-jisx0208 (font-spec :family "Hiragino Kaku Gothic ProN"))
