;; Set up package repository
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Install packages if not already installed
(defvar my-packages '(better-defaults paredit magit org))
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(eval-after-load "org"
  '(require 'ox-md nil t))
