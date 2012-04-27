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
      (list "jsl" (list "-process" local-file))
      ))
  (setq flymake-allowed-file-name-masks
        (append
         flymake-allowed-file-name-masks
         '(("\\.json$" flymake-javascript-init)
           ("\\.js$" flymake-javascript-init))))
  (setq flymake-err-line-patterns
        (cons
         '("\\(.+\\)(\\([0-9]+\\)): \\(?:lint \\)?\\(\\(?:warning\\|SyntaxError\\):.+\\)" 1 2 nil 3)
         flymake-err-line-patterns)))

(add-hook 'php-mode-hook
          '(lambda() (flymake-mode t)))
(add-hook 'javascript-mode-hook
          '(lambda() (flymake-mode t)))
