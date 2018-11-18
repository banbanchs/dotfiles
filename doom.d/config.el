;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

(require 'company)

(setq-default
 user-full-name "sdvcrx"

 company-idle-delay 0.2
 company-minimum-prefix-length 3

 ;; evil
 ;; map jj to <ESC>
 ;; evil-escape-key-sequence "jj"
 ;; evil-escape-delay 0.3
 ;; evil-escape-inhibit-functions '(evil-visual-state-p)

 ;; font
 doom-font (font-spec :family "Source Code Pro" :size 15)
 doom-unicode-font (font-spec :family "Source Code Pro" :size 15)

)

;; keybindings
(map!
 (:leader
   (:prefix "f"
     :desc "Save buffer" :n "s" #'save-buffer
     :desc "Kill buffer" :n "d" #'doom/kill-this-buffer-in-all-windows
     :desc "Toggle neotree" :n "t" #'neotree-toggle)
   )
 :i "jj" (λ! (evil-normal-state 1))
 )
