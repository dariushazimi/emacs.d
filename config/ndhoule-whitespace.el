;;; ndhoule-whitespace.el -- Whitespace settings

;;; Commentary:
;;
;; All settings related to whitespace live in this file.

;;; Code:

;; Use two spaces as a tab
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; Always indent on enter
(electric-indent-mode 1)

;; Ensure trailing newline at end of files
(setq require-final-newline t)

;; Delete trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; whitespace.el with Unicode support
(require-package 'unicode-whitespace)

;; Show trailing whitespace
(setq-default show-trailing-whitespace t)

(provide 'ndhoule-whitespace)
;;; ndhoule-whitespace.el ends here
