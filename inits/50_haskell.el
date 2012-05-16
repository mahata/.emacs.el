(require 'haskell-mode)
(require 'haskell-cabal)

(add-hook 'haskell-mode-hook
          (defun haskell-mode-hook ()
            (setq-default indent-tabs-mode nil)
            (setq-default indent-level 4)
            (setq-default tab-width 4)
            ))

(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs$" . literate-haskell-mode))
(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))
