(require :asdf)
(in-package :asdf)

(defsystem mycroft
  :version "0.0.1"
  :components ((:module package
                        :pathname ""
                        :components ((:file "package")))
               (:module source
                        :pathname ""
                        :depends-on (package)
                        :components ((:file "server")))))

