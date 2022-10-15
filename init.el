;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(global-display-line-numbers-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-comment-tag ((t (:foreground "yellow"))))
 '(custom-group-tag ((t (:inherit variable-pitch :foreground "red" :weight bold :height 1.2))))
 '(dired-directory ((t (:inherit font-lock-function-name-face))))
 '(link ((t (:foreground "cyan" :underline t))))
 '(minibuffer-prompt ((t (:foreground "white"))))
 '(window-divider-last-pixel ((t (:foreground "magenta")))))
;; highlight lines exceeding 80 characters and trailing whitespace                                            
(require 'whitespace)
(setq whitespace-style '(face empty lines-tail trailing))
(global-whitespace-mode t)
;; Here, the size of a tab character in Emacs is set to 8,                                                   
;; so Emacs will display 8 spaces on your screen to represent a single tab                                    
(setq c-default-style "bsd"
      c-basic-offset 8
      tab-width 8
      indent-tabs-mode t)

;; highlight lines exceeding 80 characters and trailing whitespace
(require 'whitespace)
(setq whitespace-style '(face empty lines-tail trailing))
(global-whitespace-mode t)

;; Adds current column along with line                                                                        
(setq column-number-mode t)

;; Enables electric-pair, emacs' autopair solution
 (defun electric-pair ()
      "If at end of line, insert character pair without surrounding spaces.
    Otherwise, just insert the typed character."
(interactive)
(if (eolp) (let (parens-require-spaces) (insert-pair)) (self-insert-command 1)))
;;turn electric pair mode on at all times
(electric-pair-mode 1)
