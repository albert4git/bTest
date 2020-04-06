
;; ClojureScript
(def message "Hello, World!")
(def msg-length (.-length message))
(def insult (.replace message #"World" "idiots"))
