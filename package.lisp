;;;; package.lisp

(defpackage #:ft2-fonts
  (:use #:cl #:stumpwm))

(in-package #:ft2-fonts)

(import '(stumpwm::font-exists-p stumpwm::open-font stumpwm::close-font
	 stumpwm::font-ascent stumpwm::font-descent stumpwm::text-line-width
	 stumpwm::draw-image-glyphs stumpwm::font-height))
