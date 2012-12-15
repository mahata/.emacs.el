(delete '("\\.xml\\'" flymake-xml-init) flymake-allowed-file-name-masks)
(delete '("\\.html?\\'" flymake-xml-init) flymake-allowed-file-name-masks)
(delete '("\\.java\\'" flymake-simple-make-java-init flymake-simple-java-cleanup) flymake-allowed-file-name-masks)
(delete '("\\.l?hs\\'" haskell-flymake-init) flymake-allowed-file-name-masks)
;; (delete '("\\.l?hs$" ghc-flymake-init flymake-simple-cleanup ghc-flymake-get-real-file-name) flymake-allowed-file-name-masks)

(when (not (fboundp 'flymake-php-init))
  (defun flymake-php-init ()
    (let* ((temp-file  (flymake-init-create-temp-buffer-copy
                        'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "php" (list "-f" local-file "-l"))))
  (setq flymake-allowed-file-name-masks
        (append
         flymake-allowed-file-name-masks
         '(("\\.php[345]?$" flymake-php-init))))
  (setq flymake-err-line-patterns
        (cons
         '("\\(\\(?:Parse error\\|Fatal error\\|Warning\\): .*\\) in \\(.*\\) on line \\([0-9]+\\)" 2 3 nil 1)
         flymake-err-line-patterns)))

(when (not (fboundp 'flymake-javascript-init))
  (defun flymake-javascript-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "jsl" (list "-process" local-file))))
  (setq flymake-allowed-file-name-masks
        (append
         flymake-allowed-file-name-masks
         '(("\\.json$" flymake-javascript-init)
           ("\\.js$" flymake-javascript-init))))
  (setq flymake-err-line-patterns
        (cons
         '("\\(.+\\)(\\([0-9]+\\)): \\(?:lint \\)?\\(\\(?:warning\\|SyntaxError\\):.+\\)" 1 2 nil 3)
         flymake-err-line-patterns)))

(when (not (fboundp 'flymake-python-init))
  (defun flymake-python-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "pyflakes" (list local-file))))
  (setq flymake-allowed-file-name-masks
        (append
         flymake-allowed-file-name-masks
         '(("\\.py$" flymake-python-init))))
  (setq flymake-err-line-patterns
        (cons
         '("\\(.*\\):\\([0-9]+\\):\\(.*\\)" 1 2 nil 3)
         flymake-err-line-patterns)))

(when (not (fboundp 'flymake-ruby-init))
  (defun flymake-ruby-init ()
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))
    (list "ruby" (list "-c" local-file))))
  (setq flymake-allowed-file-name-masks
        (append
         flymake-allowed-file-name-masks
         '(("\\.rb$" flymake-ruby-init))))
  (setq flymake-err-line-patterns
        (cons
         '("^\\(.*\\):\\([0-9]+\\): \\(.*\\)$" 1 2 nil 3) 
         flymake-err-line-patterns)))


;; (when (not (fboundp 'flymake-java-init))
;;   (defun flymake-java-init ()
;;   (let* ((temp-file   (flymake-init-create-temp-buffer-copy
;;                        'flymake-create-temp-inplace))
;;          (local-file  (file-relative-name
;;                        temp-file
;;                        (file-name-directory buffer-file-name))))
;;     (list "javac" (list "-Xlint" local-file))))
;;   (setq flymake-allowed-file-name-masks
;;         (append
;;          flymake-allowed-file-name-masks
;;          '(("\\.java$" flymake-java-init))))
;;   (setq flymake-err-line-patterns
;;         (cons
;;          '("^\\(.*\\):\\([0-9]+\\): \\(.*\\)$" 1 2 nil 3) 
;;          flymake-err-line-patterns)))


(when (not (fboundp 'flymake-tex-init))
  (defun flymake-tex-init ()
    (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                         'flymake-create-temp-inplace))
           (local-file  (file-relative-name
                         temp-file
                         (file-name-directory buffer-file-name))))
      (list "chktex" (list "-g0" "-r" "-l" (expand-file-name "~/.chktexrc") "-I" "-q" "-v0" file-name))))
  (setq flymake-allowed-file-name-masks
        (append
         flymake-allowed-file-name-masks
         '(("\\.tex$" flymake-tex-init))))
  (setq flymake-err-line-patterns
        (cons
         '("^\\(\.+\.tex\\):\\([0-9]+\\):\\([0-9]+\\):\\(.+\\)" 1 2 3 4)
         flymake-err-line-patterns)))

(defun my-popup-flymake-display-error ()
  (interactive)
  (let* ((line-no (flymake-current-line-no))
         (line-err-info-list (nth 0 (flymake-find-err-info flymake-err-info line-no)))
         (count (length line-err-info-list)))
    (while (> count 0)
      (when line-err-info-list
        (let* ((file (flymake-ler-file (nth (1- count) line-err-info-list)))
               (full-file (flymake-ler-full-file (nth (1- count) line-err-info-list)))
               (text (flymake-ler-text (nth (1- count) line-err-info-list)))
               (line (flymake-ler-line (nth (1- count) line-err-info-list))))
          (popup-tip (format "[%s] %s" line text))))
      (setq count (1- count)))))

(add-hook 'find-file-hook 'flymake-find-file-hook)
