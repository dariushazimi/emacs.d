;;; ndhoule-lang-java.el -- Java settings
;;
;;; Commentary:
;;
;; All Java settings go in this file.
;;
;;; Code:

(defvar ndhoule/jdee-path
  (expand-file-name "jdee/dist/jdee-2.4.2/lisp" site-lisp-dir))

(use-package jde-mode
  :load-path ndhoule/jdee-path
  :mode "\\.java\\'"
  :config
  ;; Autocompile Java on save
  (add-hook 'before-save-hook
            (lambda ()
              (jde-import-kill-extra-imports)
              (jde-import-all)
              (jde-import-organize))
            nil t)
  (add-hook 'after-save-hook 'jde-compile nil t))

(provide 'ndhoule-lang-java)
;;; ndhoule-lang-java.el ends here
