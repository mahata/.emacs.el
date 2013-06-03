(setq load-path
      (append
       (list
        (expand-file-name "~/.emacs.d/init-loader")
        (expand-file-name "~/.emacs.d/lisp/apel")
        (expand-file-name "~/.emacs.d/lisp/emu")
        (expand-file-name "~/.emacs.d/lisp/ensime/elisp")
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
(require 'popup)
(require 'flymake)
(require 'ensime)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
