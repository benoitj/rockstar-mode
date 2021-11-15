;;; rockstar-mode.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2021 Benoit Joly
;;
;; Author: Benoit Joly <https://github.com/benoitj>
;; Maintainer: Benoit Joly <benoit@benoitj.ca>
;; Created: August 20, 2021
;; Modified: August 20, 2021
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/benoit/rockstar-mode
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

(defvar rockstar-builtins-regexp "\\(Shout\\|Say\\|Whisper\\|plus\\|with\\|minus\\|without\\|times\\|of\\|over\\|knock\\|build\\|up\\|down\\)\s+" "regexp")
(defvar rockstar-keywords-regexp "\s+\\(if\\|is\\|until\\|takes\\)\s+" "regexp")
(defvar rockstar-constants-regexp "\s+\\(nothing\\|nobody\\|nowhere\\|null\\|true\\|false\\|right\\|yes\\|ok\\|wrong\\|no\\|lies\\)\s+" "regexp")
(defvar rockstar-font-lock-keywords
            `(
          ;;    (,rockstar-types-regexp . font-lock-type-face)
              (,rockstar-constants-regexp . font-lock-constant-face)
              (,rockstar-keywords-regexp . font-lock-keyword-face)
              (,rockstar-builtins-regexp . font-lock-builtin-face)
            ;;  (,rockstar-preprocessors-regexp . font-lock-preprocessor-face)
              ;; note: order matters
              )
            "test"
        )

;;;###autoload
(define-derived-mode rockstar-mode prog-mode "rockstar"
  "Major mode for rockstar.
Shortcuts             Command Name
\\[rockstar-complete-symbol]      `rockstar-complete-symbol'"
  (setq font-lock-defaults '((rockstar-font-lock-keywords) nil t)))


;;;###autoload
(add-to-list 'auto-mode-alist '("\\.rock\\'" . rockstar-mode))

(provide 'rockstar-mode)
;;; rockstar-mode.el ends here
