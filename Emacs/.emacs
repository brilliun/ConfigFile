;;; Set default open file path
(setq default-directory "/Users/guangyao.liu/MM/Theatrical/")

;;; Set font size (height). 100 = 10pt
;;(set-face-attribute 'default nil :height 120)

;;; Always revert buffer automatically
(global-auto-revert-mode t)

;;; Set Backup File Location
(setq backup-directory-alist '(("." . "~/.emacs.d/backup")))
;;; But actually I dont want them even be created
(setq make-backup-files nil)

;;; Hide tool-bar, scroll-bar, (menu-bar)
(tool-bar-mode 0)
(scroll-bar-mode 0)
;(menu-bar-mode 0)

;;; Parenthesis highlighting
(show-paren-mode t) 
(setq show-paren-style 'parenthesis)
(setq show-paren-delay 0)

;;; Color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'monokai t)

;; use utf-8 as default
;;(prefer-coding-system 'utf-8)
;;(setq coding-system-for-read 'utf-8)
;;(setq coding-system-for-write 'utf-8)



;;; Tab with 4 spaces
(setq c-basic-offset 2)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)


;;; Use command key for meta under Mac
;;(setq mac-option-key-is-meta nil
;;      mac-command-key-is-meta t
;;      mac-command-modifier 'meta
;;      mac-option-modifier 'none)


;;; Switch between windows using arrow keys
(global-set-key (kbd "C-x <left>") 'windmove-left)          ; move to left windnow
(global-set-key (kbd "C-x <right>") 'windmove-right)        ; move to right window
(global-set-key (kbd "C-x <up>") 'windmove-up)              ; move to upper window
(global-set-key (kbd "C-x <down>") 'windmove-down)          ; move to downer window


;;; Enable only when coding in php
(add-to-list 'load-path "~/.emacs.d/php-mode-1.5.0") 
(require 'php-mode)


;;; Autopair
(add-to-list 'load-path "~/.emacs.d/autopair") ;; comment if autopair.el is in standard load path 
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers


;;; js2-mode
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


;;; Auto-complete
(add-to-list 'load-path "~/.emacs.d/auto-complete-1.3.1")
; Load the default configuration
(require 'auto-complete-config)
; Make sure we can find the dictionaries
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete-1.3.1/dict")
; Use dictionaries by default
(setq-default ac-sources (add-to-list 'ac-sources 'ac-source-dictionary))
(global-auto-complete-mode t)
; Start auto-completion after 2 characters of a word
(setq ac-auto-start 2)
; case sensitivity is important when finding matches
(setq ac-ignore-case nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-default-init t)
 '(inhibit-startup-buffer-menu t)
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
