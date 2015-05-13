(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda2-include-dirs (quote ("/home/grouzen/sources/agda-stdlib-0.9/src" ".")))
 '(c-basic-offset 4)
 '(c-label-minimum-indentation 4)
 '(c-syntactic-indentation t)
 '(c-tab-always-indent nil)
 '(case-fold-search t)
 '(column-number-mode t)
 '(current-language-environment "UTF-8")
 '(cursor-in-non-selected-windows nil)
 '(default-input-method "rfc1345")
 '(global-font-lock-mode t nil (font-lock))
 '(markdown-command "pandoc -s")
 '(menu-bar-mode nil nil (menu-bar))
 '(scheme-program-name "guile")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(standart-indent 4)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(truncate-lines t))

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;(require 'highlight-sexps)
;(add-hook 'lisp-mode-hook 'highlight-sexps-mode)
;(setq hl-sexp-background-colors '("gray20" "gray30" "gray40"))

; Copy from console emacs to X buffer
;(setq interprogram-cut-function
;      (lambda (text &optional push)
;                    (let* ((process-connection-type nil)
;                           (xcliproxy (start-process "xclip" "xclip" "/usr/bin/xclip")))
;                      (process-send-string xcliproxy text)
;                      (process-send-eof xcliproxy))))

(setq-default indent-tabs-mode nil)
;(toggle-word-wrap 1)
;(toggle-truncate-lines 1)

;; Golang mode
(add-to-list 'load-path "~/.emacs.d/go-mode.el")
(require 'go-mode-autoloads)

;; YAML mode
(add-to-list 'load-path "/usr/share/emacs/site-lisp/yaml-mode")
(require 'yaml-mode)

;; Yasnippet
(add-to-list 'load-path "/usr/share/emacs/site-lisp/yasnippet")
(require 'yasnippet)

;; Scala mode, Ensime
(add-to-list 'load-path "/opt/ensime_2.10.0-RC3-0.9.8.2/elisp/")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(add-to-list 'load-path "/usr/share/emacs/site-lisp/scala-mode")
(require 'scala-mode-auto)

;; (add-hook 'scala-mode-hook
;;           '(lambda ()
;;              (yas/minor-mode-on)))

;; Haskell-mode
(setq haskell-font-lock-symbols t)
(load "/usr/share/emacs/site-lisp/haskell-mode/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-font-lock)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-indentation)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;; Flycheck for Haskell
(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)
;; hdevtools
(eval-after-load 'flycheck '(require 'flycheck-hdevtools))




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
(eval-after-load "color-theme"
  '(progn
	 (color-theme-initialize)
     (load "~/.emacs.d/color-themes.el")
	 (color-theme-my-charcoal-black)))

;; HyperSpec
;(setq common-lisp-hyperspec-root "/home/grouzen/desktop/media/books/HyperSpec/")
;(setq common-lisp-hyperspec-symbol-table
;	  (concat common-lisp-hyperspec-root "Data/Map_Sym.txt"))

;; ORG-mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(setq org-todo-keywords
	  '((sequence "TODO" "ACTIVE" "WAITING" "PAUSE" "|" "DONE" "CANCELLED")))

;; Markdown-mode
(add-to-list 'load-path "/usr/share/emacs/site-lisp/markdown-mode")
(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

;; SLIME
;; quicklisp way
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-lisp-implementations
      '((sbcl ("sbcl") :coding-system utf-8-unix)
        (ccl  ("ccl") :coding-system utf-8-unix)
		(mit-scheme ("mit-scheme")
					:coding-system utf-8-unix
					:init mit-scheme-init)))
(setq slime-net-coding-system 'utf-8-unix)

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

(defun my-javascript-mode-hook ()
  (setq tab-width 2))

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
(add-hook 'javascript-mode-hook 'my-javascript-mode-hook)
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

(global-set-key (kbd "\e\ee")  'eshell)

(load-file (let ((coding-system-for-read 'utf-8))
             (shell-command-to-string "agda-mode locate")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
