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

;; FB2 reader
(add-to-list 'auto-mode-alist '("\\.fb2$" . fbread-mode))
 
(defun fbread-mode ()
  (interactive)
  (sgml-mode)
  (sgml-tags-invisible 0)
  (longlines-mode)
  (view-mode))

;; HyperSpec
(setq common-lisp-hyperspec-root "/home/grouzen/desktop/media/books/HyperSpec/")
(setq common-lisp-hyperspec-symbol-table
	  (concat common-lisp-hyperspec-root "Data/Map_Sym.txt"))

;; ORG-mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(setq org-todo-keywords
	  '((sequence "TODO" "ACTIVE" "WAITING" "PAUSE" "|" "DONE" "CANCELLED")))

;;;; WL START ;;;;;
;(load-file "/usr/share/emacs/site-lisp/wl/utils/ssl.el")

;(autoload 'wl "wl" "Wanderlust" t)
;(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
;(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)

;(setq elmo-imap4-default-server "imap.gmail.com")
;(setq elmo-imap4-default-user "vasiliy.l@gmail.com")
;(setq elmo-imap4-default-authenticate-type 'clear)
;(setq elmo-imap4-default-port '993)
;(setq elmo-imap4-default-stream-type 'ssl)

;(setq wl-smtp-connection-type 'starttls)
;(setq wl-smtp-posting-port 587)
;(setq wl-smtp-authenticate-type "plain")
;(setq wl-smtp-posting-user "grouzen")
;(setq wl-smtp-posting-server "smtp.gmail.com")
;(setq wl-local-domain "gmail.com")

;(setq elmo-imap4-use-modified-utf7 t)

;; set mail-user-agent to wl
;(autoload 'wl-user-agent-compose "wl-draft" nil t)

;(if (boundp 'mail-user-agent)
;    (setq mail-user-agent 'wl-user-agent))
;(if (fboundp 'define-mail-user-agent)
;	(define-mail-user-agent
;	  'wl-user-agent
;	  'wl-user-agent-compose
;	  'wl-draft-send
;	  'wl-draft-kill
;	  'mail-send-hook))

;(setq user-mail-address "gro19u89zen@gmail.com")
;(setq wl-from "Michail <gro19u89zen@gmail.com>")

;; folder custom variables
;(setq wl-folders-file "~/Mail/.folders"
;	  wl-stay-folder-window t
;	  wl-folder-window-width 50
;	  wl-interactive-save-folders nil
;	  wl-fldmgr-make-backup t
;	  )

;(setq wl-default-folder "%inbox")
;(setq wl-default-spec "%")
;(setq wl-draft-folder "%[Gmail]/Drafts") ; Gmail IMAP
;(setq wl-trash-folder "%[Gmail]/Trash")

;; hide many fields from message buffers
;(setq wl-message-ignored-field-list '("^.*:")
;	  wl-message-visible-field-list
;	  '("^\\(From\\|Reply-To\\):"
;		"^\\(To\\|Cc\\):"
;		"^Subject:"
;		"^\\(Posted\\|Date\\):"
;		"^Organization:"
;		"^Message-Id:"
;		)
	  
;	  wl-message-sort-field-list
;	  '("^\\(From\\|Reply-To\\):"
;		"^\\(To\\|Cc\\):"
;		"^Subject:"
;		"^\\(Posted\\|Date\\):"
;		"^Organization:"
;		"^Message-Id:"
;		)
;	  )

;; I don't need prefetching
;(setq wl-message-buffer-prefetch-folder-type-list nil)

;; display full message header
;(setq wl-summary-width nil)

;; Fetch larger messages
;(setq elmo-message-fetch-threshold 500000
;	        wl-prefetch-confirm nil)

;; a little bigger summary buffer
;(setq wl-message-window-size '(1 . 2))

;; delete myself from recepients
;(setq wl-draft-always-delete-myself t)

;; use 8bit encoding
;(setq-default mime-transfer-level 8)

;; faces

;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; '(wl-highlight-message-citation-header ((((class color) (background light)) (:foreground "LightGray"))))
; '(wl-highlight-message-header-contents ((t (:foreground "white" :weight bold))))
; '(wl-highlight-message-important-header-contents ((t (:foreground "white" :weight bold))))
; '(wl-highlight-message-important-header-contents2 ((t (:foreground " " :weight bold))))
; '(wl-highlight-message-signature ((((class color) (background light)) (:foreground "grey"))))
; '(wl-highlight-message-unimportant-header-contents ((t (:foreground "LightGray" :weight bold))))
; '(wl-highlight-summary-normal-face ((((class color) (background light)) (:foreground "LightGreen")))))

;;;; WL END ;;;;

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

(defun my-save-and-compile-gcc ()
  "save and call copmile as gcc -Wall"
  (interactive)
  (save-buffer)
  (compile (concat "gcc -Wall " (buffer-file-name)" -o " (file-name-sans-extension
														  buffer-file-name)))
  (message "Compilation executed!"))

(global-set-key [f7] 'my-save-and-compile-gcc)
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
