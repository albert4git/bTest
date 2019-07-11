(require 'package)

(setq package-enable-at-startup nil)
(add-to-list 'package-archives '
	     ("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; (use-package color-theme :ensure t)
(set-terminal-parameter nil 'background-mode 'light)
(use-package color-theme
  :ensure t
  :init
  (progn

    (use-package leuven-theme)
    (load-theme 'leuven t)
    :config (set-background-color "#ddfcc9")
    ))

;;;;;;;;;;;;;;;;;;;;;;; FONTS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(setq font-lock-use-default-fonts nil)
;(setq font-lock-use-default-colors nil)
(require 'font-lock)
(set-cursor-color "forest green")
(set-face-background 'region "deep sky blue")
(set-face-background 'isearch "black")
(set-face-foreground 'isearch-lazy-highlight-face "brown")
;;++++++++++++++++++++

(set-face-foreground 'font-lock-function-name-face "red")
(set-face-background 'font-lock-function-name-face "yellow")
(set-face-foreground 'font-lock-type-face "blue")
(set-face-background 'font-lock-type-face "white")
(set-face-foreground 'font-lock-keyword-face "black")
(set-face-background 'font-lock-keyword-face "khaki")
(set-face-foreground 'font-lock-string-face "dark red")
(set-face-background 'font-lock-string-face "light gray")
(set-face-foreground 'font-lock-variable-name-face "orange red")
(set-face-background 'font-lock-variable-name-face "white")
(set-face-foreground 'font-lock-builtin-face "cyan")
(set-face-background 'font-lock-builtin-face "black")
(set-face-foreground 'font-lock-constant-face "black")
(set-face-background 'font-lock-constant-face "cyan")
(set-face-foreground 'font-lock-warning-face "blue")
(set-face-background 'font-lock-warning-face "red")

(set-face-foreground 'font-lock-comment-delimiter-face "white")
(set-face-background 'font-lock-comment-delimiter-face "dark gray")

(set-face-foreground 'font-lock-comment-face "white")
(set-face-background 'font-lock-comment-face "dark gray")

;;(setq font-lock-comment-face       'bold)
;;(setq font-lock-string-face        'highlight)
;;(setq font-lock-keyword-face    'bold)
;;(setq font-lock-function-name-face 'bold-italic)

(make-face-bold 'font-lock-builtin-face)
(make-face-bold 'font-lock-comment-face)
(make-face-bold 'font-lock-keyword-face)
(make-face-bold 'font-lock-string-face)
(make-face-bold 'font-lock-type-face)
(make-face-bold 'font-lock-function-name-face)

;; color scheme +++++++++++++++++++++++++++++++++++++++++++++++++
;; (copy-face 'default 'fixed-pitch)
;; (copy-face 'default 'font-lock-function-name-face)
;; (set-face-background 'fringe "gray32")
;(set-face-background 'highlight "magenta")
;(set-face-background 'modeline "white")
;(set-face-foreground 'bold-italic "cyan")
;(set-face-background  'bold   "red")
;(set-face-foreground  'bold "magenta")
;(set-face-foreground  'keyword "magenta")
; (set-face-foreground 'default "firebrick")
;;(set-foreground-color "cyan3")
; (set-face-foreground 'modeline "blue")
;;;;;;;;;;;;;;;;;;;;;;; FONTS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(set-frame-font "Monaco 14" nil t)
(add-to-list 'default-frame-alist '(font . "Monaco 14"))
(add-to-list 'default-frame-alist '(background-color . "black") '(font .  "Inconsolata Bold 16"))

;; #ddfcc4 ;; #b3f97a ;; #f7fc6a
;; Vim  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

(use-package evil
  :ensure t
  :config (evil-mode 1))

(use-package evil-leader
  :ensure t
  :config (global-evil-leader-mode))

(use-package evil-terminal-cursor-changer
  :ensure t)

(use-package evil-surround
  :ensure t
  :config (global-evil-surround-mode 1))

(use-package evil-matchit
  :ensure t
  :config (global-evil-matchit-mode 1))

;;end Vim  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
; Navigation
;;  (use-package ace-jump-mode
;;    :ensure t
;;    :config (evil-leader/set-key "f" 'ace-jump-mode))

;;  (use-package magit
;;    :ensure magit
;;    :init (setq magit-last-seen-setup-instructions "1.4.0"))

(use-package cc-mode
  :defer t
  :config
  (use-package google-c-style
    :ensure t
    :init
    (add-hook 'c-mode-common-hook
	      (lambda ()
		(google-set-c-style)
		(google-make-newline-indent)))
    :config
    (c-set-offset 'statement-case-open 0)))

(use-package cmake-mode
  :ensure t
  :mode "CMakeLists.txt|.cmake")

;;  (use-package helm
;;    :ensure t
;;    :bind (("C-c h" . helm-command-prefix)
;;           ("M-x" . helm-M-x)
;;           ("C-x C-f" . helm-find-files)
;;           ("C-x b" . helm-mini))
;;    :config
;;    (use-package helm-mode
;;      :diminish helm-mode
;;      :init (helm-mode 1))
;;    (global-unset-key (kbd "C-x c")))

;;  (use-package js2-mode
;;    :ensure js2-mode)
;;  
;;  (use-package jsx-mode
;;    :ensure jsx-mode
;;    :init (add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode)))

;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package nlinum
  :config
  (global-nlinum-mode))

;; TRY ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package try
  :ensure t)
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package which-key
  :ensure t
  :config (which-key-mode))
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package nlinum
  :ensure t
  :config (global-nlinum-mode))
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package flycheck               ;;
  :ensure t                         ;;
  :init                             ;;
  (global-flycheck-mode t))         ;;
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package yasnippet
  :ensure t
  :init
  (yas-global-mode 1))
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package ggtags
  :ensure t
  :config 
  (add-hook 'c-mode-common-hook
	    (lambda ()
	      (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
		(ggtags-mode 1))))
  )
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package undo-tree
  :diminish undo-tree-mode
  :config (global-undo-tree-mode)
  :bind ("s-/" . undo-tree-visualize))
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package highlight-symbol
  :diminish highlight-symbol-mode
  :commands highlight-symbol
  :bind ("s-h" . highlight-symbol))
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package smartparens
:ensure t
:config
(use-package smartparens-config)
(use-package smartparens-html)
(use-package smartparens-python)
(use-package smartparens-latex)
(smartparens-global-mode t)
(show-smartparens-global-mode t)
:bind
( ("C-<down>" . sp-down-sexp)
 ("C-<up>"   . sp-up-sexp)
 ("M-<down>" . sp-backward-down-sexp)
 ("M-<up>"   . sp-backward-up-sexp)
("C-M-a" . sp-beginning-of-sexp)
 ("C-M-e" . sp-end-of-sexp)

 ("C-M-f" . sp-forward-sexp)
 ("C-M-b" . sp-backward-sexp)

 ("C-M-n" . sp-next-sexp)
 ("C-M-p" . sp-previous-sexp)

 ("C-S-f" . sp-forward-symbol)
 ("C-S-b" . sp-backward-symbol)

 ("C-<right>" . sp-forward-slurp-sexp)
 ("M-<right>" . sp-forward-barf-sexp)
 ("C-<left>"  . sp-backward-slurp-sexp)
 ("M-<left>"  . sp-backward-barf-sexp)

 ("C-M-t" . sp-transpose-sexp)
 ("C-M-k" . sp-kill-sexp)
 ("C-k"   . sp-kill-hybrid-sexp)
 ("M-k"   . sp-backward-kill-sexp)
 ("C-M-w" . sp-copy-sexp)

 ("C-M-d" . delete-sexp)

 ("M-<backspace>" . backward-kill-word)
 ("C-<backspace>" . sp-backward-kill-word)
 ([remap sp-backward-kill-word] . backward-kill-word)

 ("M-[" . sp-backward-unwrap-sexp)
 ("M-]" . sp-unwrap-sexp)

 ("C-x C-t" . sp-transpose-hybrid-sexp)

 ("C-c ("  . wrap-with-parens)
 ("C-c ["  . wrap-with-brackets)
 ("C-c {"  . wrap-with-braces)
 ("C-c '"  . wrap-with-single-quotes)
 ("C-c \"" . wrap-with-double-quotes)
 ("C-c _"  . wrap-with-underscores)
("C-c `"  . wrap-with-back-quotes)
))


;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(setq savehist-file "~/.emacs.d/savehist")
(savehist-mode 1)
(setq history-length t)
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package flx-ido
  :demand
  :init
  (setq
   ido-enable-flex-matching t
   ;; C-d to open directories
   ;; C-f to revert to find-file
   ido-show-dot-for-dired nil
   ido-enable-dot-prefix t)
  :config
  (ido-mode 1)
  (ido-everywhere 1)
  (flx-ido-mode 1))
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(setq inhibit-startup-message t)  ;; will inhibit startup messages.
(setq require-final-newline t)    ;;will make the last line end in a carriage return.
(fset 'yes-or-no-p 'y-or-n-p)     ;;will allow you to type just "y" instead of "yes" when you exit.
(setq next-line-add-newlines nil) ;;will disallow creation of new lines when you press the "arrow-down key" at end of the buffer.
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(setq modifier-keys-are-sticky t)
(setq display-time-day-and-date t) (display-time)  ;;will make the display of date and time persistent.
(require 'paren) (show-paren-mode t)               ;;will highlight matching parentheses next to cursor.
(setq-default indent-tabs-mode nil)                ;;will introduce spaces instead of tabs by default.
(setq-default truncate-lines t)                    ;;will trucate lines if they are too long.
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(split-window-horizontally)   ;; want two windows at startup 
(other-window 1)              ;; move to other window
(shell)                       ;; start a shell
(rename-buffer "shell-first") ;; rename it
(other-window 1)              ;; move back to first window 
;;(my-key-swap my-key-pairs)    ;; zap keyboard
;; XXX ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 ;; custom functions
 (defun open-shell-pane ()
   (interactive)
   (split-window-vertically -15)
   (other-window 1)
   (shell))
 
 (defun insert-curlies ()
   (interactive)
   (end-of-line nil)
   (just-one-space)
   (insert-string "{")
   (newline)
   (insert-string "}")
   (indent-according-to-mode)
   (previous-line 1)
   (end-of-line nil)
   (newline-and-indent))

 (defun last-buffer ()
   (interactive)
   (switch-to-buffer (other-buffer)))

 (defun rotate-windows ()
   (interactive)
   (let ((this-buffer (buffer-name)))
     (other-window -1)
     (let ((that-buffer (buffer-name)))
       (switch-to-buffer this-buffer)
       (other-window 1)
       (switch-to-buffer that-buffer)
       (other-window -1))))

;;----------------------------------------
;; quiet, please! No dinging!
(setq visible-bell nil)
(setq ring-bell-function `(lambda ()
                        (let ((face-background (face-background 'default)))
                          (set-face-background 'default "DodgerBlue")
                          (set-face-background 'default face-background))))

;;----------------------------------------
;;(setq which-key-popup-type 'minibuffer)
(setq which-key-popup-type 'side-window)

;; location of which-key window. valid values: top, bottom, left, right, 
;; or a list of any of the two. If it's a list, which-key will always try
;; the first location first. It will go to the second location if there is
;; not enough room to display any keys in the first location
(setq which-key-side-window-location 'left)

;; max width of which-key window, when displayed at left or right.
;; valid values: number of columns (integer), or percentage out of current
;; frame's width (float larger than 0 and smaller than 1)
(setq which-key-side-window-max-width 0.33)

;; max height of which-key window, when displayed at top or bottom.
;; valid values: number of lines (integer), or percentage out of current
;; frame's height (float larger than 0 and smaller than 1)
(setq which-key-side-window-max-height 0.25)
