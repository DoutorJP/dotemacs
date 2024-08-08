;;; dotnet-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "dotnet" "dotnet.el" (0 0 0 0))
;;; Generated autoloads from dotnet.el

(autoload 'dotnet-add-package "dotnet" "\
Add package reference from PACKAGE-NAME.

\(fn PACKAGE-NAME)" t nil)

(autoload 'dotnet-add-reference "dotnet" "\
Add a REFERENCE to a PROJECT.

\(fn REFERENCE PROJECT)" t nil)

(autoload 'dotnet-build "dotnet" "\
Build a .NET project." t nil)

(autoload 'dotnet-clean "dotnet" "\
Clean build output." t nil)

(autoload 'dotnet-new "dotnet" "\
Initialize a new console .NET project.
PROJECT-PATH is the path to the new project, TEMPLATE is a
template (see `dotnet-templates'), and LANG is a supported
language (see `dotnet-langs').

\(fn PROJECT-PATH TEMPLATE LANG)" t nil)

(autoload 'dotnet-publish "dotnet" "\
Publish a .NET project for deployment." t nil)

(autoload 'dotnet-restore "dotnet" "\
Restore dependencies specified in the .NET project." t nil)

(autoload 'dotnet-run "dotnet" "\
Compile and execute a .NET project.  With ARG, query for project path again.

\(fn ARG)" t nil)

(autoload 'dotnet-run-with-args "dotnet" "\
Compile and execute a .NET project with ARGS.

\(fn ARGS)" t nil)

(autoload 'dotnet-sln-add "dotnet" "\
Add a project to a Solution." t nil)

(autoload 'dotnet-sln-remove "dotnet" "\
Remove a project from a Solution." t nil)

(autoload 'dotnet-sln-list "dotnet" "\
List all projects in a Solution." t nil)

(autoload 'dotnet-sln-new "dotnet" "\
Create a new Solution." t nil)

(autoload 'dotnet-test "dotnet" "\
Launch project unit-tests, querying for a project on first call.  With ARG, query for project path again.

\(fn ARG)" t nil)

(autoload 'dotnet-mode "dotnet" "\
dotnet CLI minor mode.

This is a minor mode.  If called interactively, toggle the
`dotnet mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `dotnet-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "dotnet" '("dotnet-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; dotnet-autoloads.el ends here
