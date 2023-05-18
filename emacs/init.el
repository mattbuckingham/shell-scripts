(require 'package)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;sets the location where any themes are installed
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(global-display-line-numbers-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#212121" "#B71C1C" "#558b2f" "#FFA000" "#2196f3" "#4527A0" "#00796b" "#FAFAFA"))
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("72ed8b6bffe0bfa8d097810649fd57d2b598deef47c992920aef8b5d9599eefe" "7922b14d8971cce37ddb5e487dbc18da5444c47f766178e5a4e72f90437c0711" "78e9a3e1c519656654044aeb25acb8bec02579508c145b6db158d2cfad87c44e" "b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d" "89885317e7136d4e86fb842605d47d8329320f0326b62efa236e63ed4be23c58" default)))
 '(fci-rule-color "#dadada")
 '(hl-sexp-background-color "#efebe9")
 '(package-selected-packages (quote (material-theme gruvbox-theme zenburn-theme ##)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#B71C1C")
     (40 . "#FF5722")
     (60 . "#FFA000")
     (80 . "#558b2f")
     (100 . "#00796b")
     (120 . "#2196f3")
     (140 . "#4527A0")
     (160 . "#B71C1C")
     (180 . "#FF5722")
     (200 . "#FFA000")
     (220 . "#558b2f")
     (240 . "#00796b")
     (260 . "#2196f3")
     (280 . "#4527A0")
     (300 . "#B71C1C")
     (320 . "#FF5722")
     (340 . "#FFA000")
     (360 . "#558b2f"))))
 '(vc-annotate-very-old-color nil))
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

;; Adds current column along with line                                                     
(setq column-number-mode t)

;; Enables electric-pair feature, emacs' autopair solution
 (defun electric-pair ()
      "If at end of line, insert character pair without surrounding spaces.
    Otherwise, just insert the typed character."
(interactive)
(if (eolp) (let (parens-require-spaces) (insert-pair)) (self-insert-command 1)))
;;turn electric pair mode on at all times
(electric-pair-mode 1)

;;MENUBAR - disable menu, scroll and toolbar
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
