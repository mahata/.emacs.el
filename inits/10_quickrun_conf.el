(require 'quickrun)
(push '("*quickrun*") popwin:special-display-config)

;; javascript
(quickrun-add-command "rhino"
                      '((:command . "rhino")))
(add-to-list 'quickrun-file-alist
             '("\\.js$" . "rhino"))
