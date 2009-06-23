(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(c-label-minimum-indentation 4)
 '(c-syntactic-indentation t)
 '(c-tab-always-indent nil)
 '(case-fold-search t)
 '(column-number-mode t)
 '(current-language-environment "UTF-8")
 '(cursor-in-non-selected-windows nil)
 '(default-input-method "rfc1345")
 '(ecb-compilation-buffer-names (quote (("*Calculator*") ("*vc*") ("*vc-diff*") ("*Apropos*") ("*Occur*") ("*shell*" . t) ("\\*[cC]ompilation.*\\*" . t) ("*JDEE Compile Server*") ("*Help*") ("*Completions*") ("*Backtrace*" . t) ("*Compile-log*") ("*bsh*") ("*Messages*"))))
 '(ecb-compile-window-height 10)
 '(ecb-compile-window-temporally-enlarge (quote after-selection))
 '(ecb-compile-window-width (quote edit-window))
 '(ecb-layout-name "left8")
 '(ecb-options-version "2.32")
 '(ecb-tree-indent 2)
 '(ecb-windows-width 0.18)
 '(global-font-lock-mode t nil (font-lock))
 '(jabber-account-list (quote (("grouzen@jabber.ru" (:password . "poteraysmisl") (:network-server . "jabber.ru") (:port . 5222) (:connection-type . network)))))
 '(jabber-default-show "")
 '(menu-bar-mode nil nil (menu-bar))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(standart-indent 4)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(transient-mark-mode t))

;; Mercurial
;;(require 'mercurial)

;; PHP-mode
(require 'php-mode)
(add-to-list 'auto-mode-alist '("\\.module$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.install$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.engine$" . php-mode))
 
;; SLIME
(setq inferior-lisp-program "/opt/sbcl/bin/sbcl")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime")
(require 'slime)
(slime-setup)

;; Jabber.el
;;(require 'jabber)
;;(require 'jabber-autoloads)
;;(jabber-connect-all)
;; (("grouzen@jabber.ru"
 ;; (:password . "poteraysmisl")
 ;; (:connection-type . network)))

;; IDO
(ido-mode t)
(global-set-key [C-xb] 'ido-switch-buffer)

;; Workspaces
;;(require 'workspaces)

;; Escreen
(require 'escreen)

;; ECB
(add-to-list 'load-path "/usr/share/emacs/site-lisp/ecb")
(require 'ecb)

;;Load CEDET
;;(add-to-list 'load-path "/usr/share/emacs/site-lisp/emhacks")
(load-file "/usr/share/emacs/site-lisp/cedet/common/cedet.el")

;; elib
;;(setq load-path (append (list "/usr/share/emacs/site-lisp/elib")
	;;					load-path))

;; JDE
;;(add-to-list 'load-path "/usr/share/emacs/site-lisp/jde/lisp")
;;(require 'jde)

;; menu bar
(menu-bar-mode -1)

;; right look in shell and dired
(setq file-name-coding-system 'utf-8)

;; scrolling on the 1 line
(setq scroll-step 1)

;; flash line
;;(global-hl-line-mode 1)

;; navigation of the buffers
(windmove-default-keybindings 'meta)

(fset 'yes-or-no-p 'y-or-n-p)

;; bookmarks
(global-set-key [f5] 'bookmark-set)
(global-set-key [f6] 'bookmark-jump)

;; workspaces
;;(global-set-key [?\C-q] 'workspace-goto)

;; save emacs's session
(desktop-save-mode t)

;; Indent new lines
(defun my-ret-hook ()
  "Make new lines ident"
  (local-set-key (kbd "RET") 'newline-and-indent))

;; C++ and C mode
(defun my-c++-mode-hook ()
  (setq tab-width 4)
  (setq c++-auto-hungry-initial-state 'none)
  (setq c++-delete-function 'backward-delete-char)
  (setq c++-tab-always-indent t)
  (setq c-indent-level 2)
  (setq c-continued-statement-offset 2)
  (setq c++-empty-arglist-indent 2))
(defun my-c-mode-hook ()
  (setq tab-width 4)
  (setq c-auto-hungry-initial-state 'none)
  (setq c-delete-function 'backward-delete-char)
  (setq c-tab-always-indent t)
  ;; BSD-ish indentation style
  (setq c-indent-level 2)
  (setq c-continued-statement-offset 2)
  (setq c-brace-offset -2)
  (setq c-argdecl-indent 0)
  (setq c-label-offset -2))

(add-hook 'c++-mode-hook 'my-ret-hook)
(add-hook 'c-mode-hook 'my-ret-hook)
(add-hook 'java-mode-hook 'my-ret-hook)
(add-hook 'jde-mode-hook 'my-ret-hook)
(add-hook 'lisp-mode-hook 'my-ret-hook)
(add-hook 'emacs-lisp-mode-hook 'my-ret-hook)
(add-hook 'lisp-interaction-mode-hook 'my-ret-hook)
(add-hook 'python-mode-hook 'my-ret-hook)
(add-hook 'html-mode-hook 'my-ret-hook)
(add-hook 'css-mode-hook 'my-ret-hook)
(add-hook 'c++-mode-hook 'my-c++-mode-hook)
(add-hook 'c-mode-hook 'my-c-mode-hook)

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(global-set-key [f7] 'compile)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)

(global-set-key (kbd "\e\eE") 'ecb-activate)
(global-set-key (kbd "\e\egd") 'ecb-goto-window-directories)
(global-set-key (kbd "\e\egs") 'ecb-goto-window-sources)
(global-set-key (kbd "\e\egm") 'ecb-goto-window-methods)
(global-set-key (kbd "\e\egh") 'ecb-goto-window-history)
(global-set-key (kbd "\e\ega") 'ecb-goto-window-analyse)
(global-set-key (kbd "\e\egb") 'ecb-goto-window-speedbar)
(global-set-key (kbd "\e\egc") 'ecb-goto-window-compilation)
(global-set-key (kbd "\e\eg1") 'ecb-goto-window-edit1)
(global-set-key (kbd "\e\eg2") 'ecb-goto-window-edit2)
(global-set-key (kbd "\e\ee")  'eshell)

(global-set-key (kbd "\e\ewl") 'escreen-goto-last-screen)
(global-set-key (kbd "\e\ewm") 'escreen-menu)
(global-set-key (kbd "\e\ewt") 'escreen-goto-screen)
(global-set-key (kbd "\e\ewc") 'escreen-create-screen)
(global-set-key (kbd "\e\ewk") 'escreen-kill-screen)
(global-set-key (kbd "\e\ewn") 'escreen-goto-next-screen)
(global-set-key (kbd "\e\ewp") 'escreen-goto-prev-screen)

(mouse-wheel-mode 1)
