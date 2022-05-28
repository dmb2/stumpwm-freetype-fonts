;;;; ft2-fonts.lisp

(in-package #:ft2-fonts)
(export '(font-exists-p 
	  open-font
	  close-font
	  font-ascent
	  font-descent
	  text-line-width
	  draw-image-glyphs))
;;; "ft2-fonts" goes here. Hacks and glory await!
;;;; FT2 fonts
(defmethod font-exists-p ((font clx-ft2:font))
  ;; if we can list the font then it exists
  t)

(defmethod open-font ((display xlib:display) (font clx-ft2:font))
  font)

(defmethod close-font ((font clx-ft2:font)))

(defmethod font-ascent ((font clx-ft2:font))
  (clx-ft2:font-ascent font))

(defmethod font-descent ((font clx-ft2:font))
  (clx-ft2:font-descent font))

(defmethod font-height ((font clx-ft2:font))
  (+ (clx-ft2:font-ascent font) (clx-ft2:font-descent font)))


(defmethod text-line-width ((font clx-ft2:font) text &rest keys &key (start 0) end translate)
  (declare (ignorable start end translate))
  (apply 'clx-ft2:text-width 
	 (clx-ft2::font-face font) (list text)))


(defmethod draw-image-glyphs (drawable 
                              gcontext
                              (font clx-ft2:font)
                              x y
                              sequence &rest keys 
			      &key (start 0) end translate width size
                                (update-bg-p t))
  (declare (ignorable keys start end translate width size update-bg-p))
  (apply 'clx-ft2:draw-glyphs
         drawable
         gcontext
  	 x y
  	 sequence
  	 :font font
	 :allow-other-keys t
	 keys))
