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
                      nrepl))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

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
 '(whitespace-action (quote (report-on-bogus))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Droid Sans Mono" :foundry "unknown" :slant normal :weight normal :height 83 :width normal))))
 '(show-paren-mismatch ((t (:background "red" :foreground "white"))))
 '(whitespace-line ((t (:background "brown" :foreground "medium blue"))))
 '(whitespace-tab ((t (:background "DeepPink1" :foreground "lightgray")))))
