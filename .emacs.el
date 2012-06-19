(setq load-path
      (append
       (list
        (expand-file-name "~/.emacs.d/init-loader")
        (expand-file-name "~/.emacs.d/lisp/apel")
        (expand-file-name "~/.emacs.d/lisp/emu")
        (expand-file-name "~/.emacs.d/lisp/erlang-mode")
        (expand-file-name "~/.emacs.d/lisp/vline")
        (expand-file-name "~/.emacs.d/lisp/popwin")
        (expand-file-name "~/.emacs.d/lisp/haskell-mode")
        (expand-file-name "~/.emacs.d/lisp/anything")
        (expand-file-name "~/.emacs.d/lisp/auto-complete")
        (expand-file-name "~/.emacs.d/lisp/auto-install")
        ) load-path))

(setq exec-path
      (append
       (list
        "/bin"
        "/usr/bin"
        "/usr/local/bin"
        ) exec-path))

(require 'cl)
(require 'info)
(require 'popwin)
(require 'popup)
(require 'flymake)
(require 'anything-startup)

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
