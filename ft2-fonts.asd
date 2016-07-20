;;;; ft2-fonts.asd

(asdf:defsystem #:ft2-fonts
  :serial t
  :description "Describe ft2-fonts here"
  :author "David Bjergaard, Michael Filonenko"
  :license "GPLv3"
  :depends-on (#:stumpwm #:clx-freetype2-renderer)
  :components ((:file "package")
               (:file "ft2-fonts")))

