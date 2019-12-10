;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(setenv "PATH" (concat (getenv "PATH") ":/home/jim/go/bin"))
(setq exec-path (append exec-path '("/home/jim/go/bin")))

(defun my-doom-modeline--font-height ()
  "Calculate the actual char height of the mode-line."
  (+ (frame-char-height) 0))

(advice-add #'doom-modeline--font-height :override #'my-doom-modeline--font-height)

(setq
 display-line-numbers-type 'relative
 doom-font (font-spec :family "IBM Plex Mono" :size 16)
 projectile-project-search-path '("~/projects/" "~/moat/"))

;;; Add to ~/.doom.d/config.el
(setq doom-font (font-spec :family "IBM Plex Mono" :size 32 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "Fira Sans") ; inherits `doom-font''s :size
      doom-unicode-font (font-spec :family "Input Mono Narrow" :size 12)
      doom-big-font (font-spec :family "Fira Mono" :size 38))
