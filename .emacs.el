(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defvar my-packages '(starter-kit
                      starter-kit-lisp
                      starter-kit-bindings
                      starter-kit-eshell
                      clojure-mode
                      clojure-test-mode
                      nrepl
                      yasnippet
                      markdown-mode))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(setq c-default-style "bsd"
      c-basic-offset 2)

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-url-browser-function (quote browse-url-chromium))
 '(electric-indent-mode t)
 '(electric-pair-mode t)
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(global-whitespace-mode t)
 '(grep-command "ack-grep --with-filename --nogroup --all")
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(kill-whole-line t)
 '(python-check-command "flake8")
 '(sentence-end-double-space nil)
 '(sentence-end-without-period nil)
 '(tab-always-indent t)
 '(whitespace-action (quote (auto-cleanup)))
 '(whitespace-line-column 110))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Droid Sans Mono" :foundry "unknown" :slant normal :weight normal :height 83 :width normal))))
 '(show-paren-mismatch ((t (:background "red" :foreground "white"))))
 '(whitespace-line ((t (:background "black" :foreground "red"))))
 '(whitespace-tab ((t (:background "DeepPink1" :foreground "lightgray")))))

(load-theme 'tango)
(set-default-font " -unknown-DejaVu Sans Mono-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1")
(yas-global-mode 1)
(global-set-key (kbd "<f10>") 'yas/insert-snippet)
(global-set-key (kbd "<f5>") 'compile)
(defun my-python-cfg ()
  (local-set-key (kbd "<f5>") 'python-check)
  (hs-hide-initial-comment-block))
(defun my-c-cfg ()
  (hs-hide-initial-comment-block))
(add-hook 'c-mode-common-hook 'my-python-cfg)

(load-library "hideshow")
(global-set-key (kbd "C-+") 'toggle-hiding)
(global-set-key (kbd "C-\\") 'toggle-selective-display)
(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'lisp-mode-hook       'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'python-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)
