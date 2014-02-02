;; * Do following things beforehand to enable this elisp
;; *
;; * Install Go
;; * Run `mkdir $HOME/go-workspace`
;; * Add `export GOPATH=$HOME/go-workspace` to ~/.zshrc
;; * Run `go get -u github.com/dougm/goflymake`
;; * Run `go get -u github.com/nsf/gocode`

(add-to-list 'exec-path (expand-file-name "~/go-workspace/bin"))
(add-to-list 'load-path "~/go-workspace/src/github.com/dougm/goflymake")
(require 'go-flymake)
;; (require 'go-flycheck)

(add-to-list 'load-path "~/go-workspace/src/github.com/nsf/gocode/emacs")
(require 'go-autocomplete)
(require 'auto-complete-config)

(when (require 'go-mode nil t))

(defun go-mode-hooks ()
  (setq indent-tabs-mode t)
  (helm-gtags-mode t)
  (setq indent-level 4)
  (setq c-basic-offset 4)
  (setq tab-width 4)
  (hs-minor-mode 1)
  (setq comment-start "// "
        comment-end ""
        comment-start-skip "// *"))

(add-hook 'go-mode-hook 'go-mode-hooks)
