;; Auto Complete
(require 'auto-complete-config)
(global-auto-complete-mode 1)
(ac-config-default)
(setq ac-menu-height 20)
(setq ac-auto-start 4)
(setq ac-use-menu-map t)

;; No Backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;; No Beep
(setq ring-bell-function 'ignore) ;; do nothing when beep ringsha

;; Global White Space
(global-whitespace-mode 0)
(setq whitespace-style '(face tabs tab-mark spaces space-mark))

(defun toggle-global-whitespace-mode ()
  (interactive)
  (if global-whitespace-mode
    (global-whitespace-mode 0)
    (global-whitespace-mode 1)))

;; Save cursor position
(require 'saveplace)
(setq-default save-place t)

;; UI
(global-hl-line-mode 1) ;; cursor line
(blink-cursor-mode 1) ;; let cursor blink
(show-paren-mode 1) ;; show corresponding parentheses
(display-time-mode 1) ;; show time on mode line
(set-face-foreground 'mode-line "white") ;; set active modeline
(set-face-background 'mode-line "red")   ;; set active modeline
(set-face-foreground 'mode-line-inactive "white") ;; set inactive modeline
(set-face-background 'mode-line-inactive "blue")  ;; set inactive modeline
(line-number-mode 1) ;; show line number
(column-number-mode t) ;; show column number
(which-func-mode 1) ;; show function name on mode-line
(setq which-func-modes t) ;; show function name on mode-line

;; Buffer scroll
(defun scroll-n-lines-ahead (&optional n)
  "Scroll ahead N lines (1 by default)."
  (interactive "P")
  (scroll-up (prefix-numeric-value n)))

(defun scroll-n-lines-behind (&optional n)
  "Scroll behind N lines (1 by default)."
  (interactive "P")
  (scroll-down (prefix-numeric-value n)))

;; Key bindings
(define-key global-map "\C-h" 'backward-delete-char)
(define-key global-map (kbd "C-o") 'scroll-n-lines-behind)
(define-key global-map "\C-z" 'scroll-n-lines-ahead)
(define-key global-map "\C-c;" 'comment-region)
(define-key global-map "\C-c:" 'uncomment-region)
(define-key global-map "\C-cr" 'replace-string)
(define-key global-map (kbd "C-j") 'newline-and-indent)
(define-key global-map "\C-x\C-i" 'indent-region)
(define-key global-map "\C-co" 'helm-recentf)

;; Elscreen
(elscreen-start)
(elscreen-set-prefix-key "\C-]")

;; Sequential Command
(require 'sequential-command-config)
(sequential-command-setup-keys)
