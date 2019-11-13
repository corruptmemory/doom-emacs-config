;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(defun my-doom-modeline--font-height ()
  "Calculate the actual char height of the mode-line."
  (+ (frame-char-height) 0))

(advice-add #'doom-modeline--font-height :override #'my-doom-modeline--font-height)

(setq
 display-line-numbers-type 'relative
 doom-font (font-spec :family "IBM Plex Mono" :size 32)
 projectile-project-search-path '("~/projects/" "~/moat/"))

