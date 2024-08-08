;;; fold-this-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "fold-this" "fold-this.el" (0 0 0 0))
;;; Generated autoloads from fold-this.el

(autoload 'fold-this "fold-this" "\
Fold the region between BEG and END.

If FOLD-HEADER is specified, show this text in place of the
folded region.  If not, default to `fold-this-overlay-text'.

\(fn BEG END &optional FOLD-HEADER)" t nil)

(autoload 'fold-this-sexp "fold-this" "\
Fold sexp around point.

If the point is at a symbol, fold the parent sexp.  If the point
is in front of a sexp, fold the following sexp." t nil)

(autoload 'fold-this-all "fold-this" "\
Fold  all occurences of text in region.

\(fn BEG END)" t nil)

(autoload 'fold-this-mode "fold-this" "\
Toggle folding on or off.
With folding activated add custom map \\[fold-this-keymap]

This is a minor mode.  If called interactively, toggle the
`Fold-This mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `fold-this-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(defvar fold-this-persistent-mode nil "\
Non-nil if Fold-This-Persistent mode is enabled.
See the `fold-this-persistent-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `fold-this-persistent-mode'.")

(custom-autoload 'fold-this-persistent-mode "fold-this" nil)

(autoload 'fold-this-persistent-mode "fold-this" "\
Enable persistence of overlays for `fold-this-mode'

This is a minor mode.  If called interactively, toggle the
`Fold-This-Persistent mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='fold-this-persistent-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "fold-this" '("fold-"))

;;;***

;;;### (autoloads nil nil ("fold-this-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; fold-this-autoloads.el ends here
