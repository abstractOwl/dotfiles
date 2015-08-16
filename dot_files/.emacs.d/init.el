;; Set up package repository
(require 'package)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(package-initialize)

;; Install packages if not already installed
(defvar my-packages '(better-defaults paredit magit))
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

