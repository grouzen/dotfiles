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
 '(ecb-compilation-buffer-names (quote (("*Calculator*") ("*vc*") ("*vc-diff*") ("*Apropos*") ("*Occur*") ("*shell*" . t) ("\\*[cC]ompilation.*\\*" . t) ("*JDEE Compile Server*") ("*Help*") ("*Completions*") ("*Backtrace*" . t) ("*Compile-log*") ("*bsh*") ("*Messages*") ("\\*gud-.*\\*" . t))))
 '(ecb-compile-window-height 4)
 '(ecb-compile-window-temporally-enlarge (quote after-selection))
 '(ecb-compile-window-width (quote edit-window))
 '(ecb-layout-name "left8")
 '(ecb-options-version "2.40")
 '(ecb-tree-indent 1)
 '(ecb-windows-width 0.12)
 '(global-font-lock-mode t nil (font-lock))
 '(menu-bar-mode nil nil (menu-bar))
 '(scheme-program-name "guile")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(standart-indent 4)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(truncate-lines t))

(setq-default indent-tabs-mode nil)
;(toggle-word-wrap 1)
;(toggle-truncate-lines 1)

;; Display statistic in the status bar
;(display-battery-mode)
;(display-time-mode)

;; Haskell-mode
;(setq haskell-font-lock-symbols t)
;(load "/usr/share/emacs/site-lisp/haskell-mode/haskell-site-file")
;(add-hook 'haskell-mode-hook 'turn-on-haskell-font-lock)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;(add-hook 'haskell-mode-hook 'turn-on-indentation)

;; Javascript-mode
;(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))
;(autoload 'javascript-mode "javascript" nil t)

;; tpl files like html
(add-to-list 'auto-mode-alist '("\\.tpl$"  . html-mode))

;; backup files *~
(setq
 backup-by-copying t
 backup-directory-alist '(("." . "~/emacs-backups/"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-version 2
 version-control t)

;; color-theme
(add-to-list 'load-path "/usr/share/emacs/site-lisp/color-theme/")
(require 'color-theme)
;(load "~/.emacs.d/.color-themes.el")
(eval-after-load "color-theme"
  '(progn
	 (color-theme-initialize)
	 (color-theme-lawrence)))

;; HyperSpec
;(setq common-lisp-hyperspec-root "/home/grouzen/desktop/media/books/HyperSpec/")
;(setq common-lisp-hyperspec-symbol-table
;	  (concat common-lisp-hyperspec-root "Data/Map_Sym.txt"))

;; ORG-mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(setq org-todo-keywords
	  '((sequence "TODO" "ACTIVE" "WAITING" "PAUSE" "|" "DONE" "CANCELLED")))


;; PHP-mode
(add-to-list 'load-path "/usr/share/emacs/site-lisp/php-mode")
(require 'php-mode)
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))

;; Markdown-mode
(add-to-list 'load-path "/usr/share/emacs/site-lisp/markdown-mode")
(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

;; SLIME
;(setq inferior-lisp-program "/usr/bin/sbcl")
;(setq slime-lisp-implementations
;	  '((sbcl ("sbcl") :coding-system utf-8-unix)
;		(mit-scheme ("mit-scheme")
;					:coding-system utf-8-unix
;					:init mit-scheme-init)))
;(setq slime-net-coding-system 'utf-8-unix)
;(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime")
;(require 'slime)
;(require 'slime-autoloads)
;(slime-setup
;  '(slime-fancy slime-scratch slime-editing-commands slime-fuzzy
;				slime-presentations slime-scheme slime-repl
;                slime-mrepl slime-indentation))

;(defmacro lisp-slime (lisp path &optional coding)
;  (let ((funname (intern (format "%s-slime" lisp))))
;    `(defun ,funname ()
;       (interactive)
;       (let ((inferior-lisp-program ,path)
;             (slime-net-coding-system (or ,coding 'utf-8-unix)))
;         (slime)))))

;(lisp-slime sbcl "/usr/bin/sbcl")
;(lisp-slime clisp "/usr/bin/clisp")
        
;  (slime 'sbcl))
;
;(defun mit-scheme-slime ()
;  (interactive)
;  (let ((inferior-lisp-program "/usr/bin/mit-scheme"))
;  (slime 'mit-scheme)))

;(defun mit-scheme-init (file encoding)
;  (setq slime-protocol-version 'ignore)
;  (format "%S\n\n"
;		  `(begin
;			(load-option 'format)
;			(load-option 'sos)
;			(eval
;			 '(construct-normal-package-from-description
;			   (make-package-description '(swank) '(())
;										 (vector) (vector) (vector) false))
;			 (->environment '(package)))
;			(load ,(expand-file-name
;					"/usr/share/emacs/site-lisp/slime/contrib/swank-mit-scheme.scm"
;					slime-path)
;				  (->environment '(swank)))
;			(eval '(start-swank ,file) (->environment '(swank))))))

;(defun find-mit-scheme-package ()
;  (save-excursion
;	(let ((case-fold-search t))
;	  (and (re-search-backward "^[;]+ package: \\((.+)\\).*$" nil t)
;		   (match-string-no-properties 1)))))

;(setq slime-find-buffer-package-function 'find-mit-scheme-package)
;; END SLIME

;; IDO
(ido-mode t)
(global-set-key [C-xb] 'ido-switch-buffer)

;; Workspaces
;;(require 'workspaces)

;; Escreen
(require 'escreen)

;;Load CEDET
;(load-file "/usr/share/emacs/site-lisp/cedet/common/cedet.el")
;;(add-to-list 'load-path "/usr/share/emacs/site-lisp/emhacks")

;; ECB
(add-to-list 'load-path "/usr/share/emacs/site-lisp/ecb")
(require 'ecb)
(ecb-activate)

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
;(global-set-key [f5] 'bookmark-set)
;(global-set-key [f6] 'bookmark-jump)

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
(defun my-scheme-mode-hook ()
  (setq tab-width 2))

(defun my-html-mode-hook ()
  (set sgml-basic-offset 4))

(add-hook 'scheme-mode-hook 'my-ret-hook)
(add-hook 'scheme-mode-hook 'my-scheme-mode-hook)
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
(add-hook 'javascript-mode-hook 'my-ret-hook)
(add-hook 'php-mode-hook 'my-ret-hook)
(add-hook 'html-mode-hook
          (lambda ()
            ;; Default indentation is usually 2 spaces, changing to 4.
            (set (make-local-variable 'sgml-basic-offset) 4)))

;(defun my-save-and-compile-gcc ()
;  "save and call copmile as gcc -Wall"
;  (interactive)
;  (save-buffer)
;  (compile (concat "gcc -g -Wall " (buffer-file-name)" -o " (file-name-sans-extension
;                                                             buffer-file-name)))
;  (message "Compilation executed!"))

;(defun prelude-google ()
;  "Googles a query or region if any."
;  (interactive)
;  (browse-url
;   (concat
;    "http://www.google.com/search?ie=utf-8&oe=utf-8&q="
;    (if mark-active
;        (buffer-substring (region-beginning) (region-end))
;      (read-string "Google: ")))))

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
(global-set-key (kbd "\e\egt") 'ecb-toggle-ecb-windows)
(global-set-key (kbd "\e\ee")  'eshell)

(global-set-key (kbd "\e\ewl") 'escreen-goto-last-screen)
(global-set-key (kbd "\e\ewm") 'escreen-menu)
(global-set-key (kbd "\e\ewt") 'escreen-goto-screen)
(global-set-key (kbd "\e\ewc") 'escreen-create-screen)
(global-set-key (kbd "\e\ewk") 'escreen-kill-screen)
(global-set-key (kbd "\e\ewn") 'escreen-goto-next-screen)
(global-set-key (kbd "\e\ewp") 'escreen-goto-prev-screen)

;(mouse-wheel-mode 1)

(ecb-toggle-ecb-windows)

