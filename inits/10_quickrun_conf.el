;; (require 'quickrun)
;; (push '("*quickrun*") popwin:special-display-config)

;; javascript

;; (quickrun-add-command "rhino"
;;                       '((:command . "rhino")))
;; (add-to-list 'quickrun-file-alist
;;              '("\\.js$" . "rhino"))

;; (quickrun-add-command "node"
;;                       '((:command . "~/.nodebrew/current/bin/node")
;;                         (:exec . "%c %s")))
;; (add-to-list 'quickrun-file-alist
;;              '("\\.js$" . "node"))

;; clojure
;; (quickrun-add-command "clojure"
;;                       '((:command . "clj")))
;; (add-to-list 'quickrun-file-alist
;;              '("\\.clj$" . "clojure"))
