(in-package :asdf-user)

(defsystem :cl-dk-prelude-scripting
  :description "My common lisp prelude for private scripts"
  :author "David Krentzlin <david.krentzlin@gmail.com>"
  :maintainer "David Krentzlin <david.krentzlin@gmail.com>"
  :source-control (:git "https://github.com/certainty/cl-dk-prelude-scripting.git")
  :license "BSD"
  :version "1.0"
  :depends-on
  (:cl-dk-prelude
    :cl-ansi-text

    :bordeaux-threads
    :trivial-monitored-thread
    :lparallel

    :cl-ansi-text
    :cl-csv
    :shasht  
    :cl-json-pointer/synonyms
    :dexador
    :hunchentoot
    :easy-routes
    :quri
    :lquery
    :clingon  
    :parse-float
    :parse-number
    :dbi 
    :sxql 
    :vgplot
    :secret-values
    :cmd
    :printv
    :clesh  ;; shell pass-through
    )
  :serial t
  :components
  ((:file "packages")))
