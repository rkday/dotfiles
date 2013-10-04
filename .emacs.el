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
                      yasnippet-bundle
                      markdown-mode
                      color-theme-sanityinc-tomorrow))


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
 '(custom-safe-themes (quote ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "5ee12d8250b0952deefc88814cf0672327d7ee70b16344372db9460e9a0e3ffc" default)))
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

(load-theme 'sanityinc-tomorrow-bright)
(set-default-font "Source Code Pro:pixelsize=11:foundry=adobe:weight=light:slant=normal:width=normal:spacing=100:scalable=true")
(yas/global-mode 1)

(global-set-key (kbd "<f10>") 'yas/insert-snippet)
(global-set-key (kbd "<f5>") 'compile)

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
(add-hook 'ruby-mode-hook         'hs-minor-mode)


(defun my-python-cfg ()
  (local-set-key (kbd "<f5>") 'python-check)
  )
(defun my-c-cfg ()
  )
(add-hook 'c-mode-common-hook 'my-c-cfg)
(add-hook 'python-mode-hook 'my-python-cfg)

(add-hook 'hs-minor-mode-hook 'hs-hide-initial-comment-block)

