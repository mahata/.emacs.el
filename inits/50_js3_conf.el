(setq js3-mirror-mode t)
(autoload 'js3-mode "js3" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))

(defun js3-mode-hooks ()
  (setq js3-indent-level 4)
  (setq tab-width 4)
  (setq js3-mode-dev-mode-p t)
  (setq js3-auto-indent-p t)
  (setq js3-enter-indents-newline t)
  (setq js3-indent-on-enter-key t)
  (hs-minor-mode 1)
  (helm-gtags-mode t)
  (when (require 'auto-complete nil t)
    (make-variable-buffer-local 'ac-sources)
    (add-to-list 'ac-sources 'ac-source-yasnippet)
    (auto-complete-mode t)))

(add-hook 'js3-mode-hook 'js3-mode-hooks)

;; (http://www.emacswiki.org/emacs/Js2Mode)
;;
;; After js3 has parsed a js file, we look for jslint globals decl comment ("/* global Fred, _, Harry */") and
;; add any symbols to a buffer-local var of acceptable global vars
;; Note that we also support the "symbol: true" way of specifying names via a hack (remove any ":true"
;; to make it look like a plain decl, and any ':false' are left behind so they'll effectively be ignored as
;; you can;t have a symbol called "someName:false"
(add-hook 'js3-post-parse-callbacks
	  (lambda ()
	    (when (> (buffer-size) 0)
	      (let ((btext (replace-regexp-in-string
			    ": *true" " "
			    (replace-regexp-in-string "[\n\t ]+" " " (buffer-substring-no-properties 1 (buffer-size)) t t))))
		(mapc (apply-partially 'add-to-list 'js3-additional-externs)
		      (split-string
		       (if (string-match "/\\* *global *\\(.*?\\) *\\*/" btext) (match-string-no-properties 1 btext) "")
		       " *, *" t))
		))))
