(require 'yasnippet)

(add-to-list 'yas-snippet-dirs "~/emacs-conf/yasnippet")

(require 'dropdown-list)
(setq yas/prompt-functions '(yas/dropdown-prompt
                             yas/ido-prompt
                             yas/completing-prompt))

(yas-global-mode 1)

