;;; Tab with 4 spaces
(setq c-basic-offset 4)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)


;;; Use command key for meta under Mac
(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)


;;; Enable only when coding in php
;(require 'php-mode)


;;; Autopair
(add-to-list 'load-path "~/.emacs.d/autopair") ;; comment if autopair.el is in standard load path 
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers


;;; js2-mode
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))



;(add-to-list 'load-path "~/.emacs.d/auto-complete-1.3.1")
; Load the default configuration
;(require 'auto-complete-config)
; Make sure we can find the dictionaries
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete-1.3.1/dict")
; Use dictionaries by default
;(setq-default ac-sources (add-to-list 'ac-sources 'ac-source-dictionary))
;(global-auto-complete-mode t)
; Start auto-completion after 2 characters of a word
;(setq ac-auto-start 2)
; case sensitivity is important when finding matches
;(setq ac-ignore-case nil)
