;;; ndhoule-emmet.el --- Settings for Emmet mode.

;;; Commentary:
;;
;; Settings for Emmet mode, a markup/CSS workflow helper.
;; For more info, see:
;;   https://github.com/smihica/emmet-mode
;;   http://emmet.io/

;;; Code:

(require-package 'emmet-mode)

;; Enable Emmet mode in compatible modes
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'less-mode-hook 'emmet-mode)
(add-hook 'sass-mode-hook 'emmet-mode)
(add-hook 'handlebars-mode-hook 'emmet-mode)

(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2)))

(provide 'ndhoule-emmet)
;;; ndhoule-emmet.el ends here