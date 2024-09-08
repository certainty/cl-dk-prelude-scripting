(in-package :cl-user)

(defpackage :cl-dk-prelude-scripting
  (:use :cl :cl-dk-prelude)
  (:local-nicknames
    (:/os :uiop/os)
    (:os :uiop/os)
    (:fs :uiop/filesystem)
    (:a :alexandria)
    (:s :serapeum)
    (:csv :cl-csv)
    (:http :dexador)
    (:json :shasht)
    (:json-pointer :cl-json-pointer/synonyms)
    (:time :local-time)
    (:routes :easy-routes))
  (:export
    #:enable-shell-passthrough
    #:disable-shell-passtghrough))

(cl-reexport:reexport-from :parse-float)
(cl-reexport:reexport-from :parse-number
                           :include
                           '(:parse-number
                             :parse-positive-real-number
                              :parse-real-number))

(cl-dk-prelude:enable-pythonic-string-syntax)

