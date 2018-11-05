;;; avoid-accidental-termination-mode.el --- Avoid accidentally killing emacs
;;
;;; Copyright (C) 2018  Free Software Foundation, Inc.
;;
;; Author: Eric Crosson <eric.s.crosson@utexas.com>
;; Version: 0.0.1
;; Keywords: extensions
;; URL: https://github.com/EricCrosson/avoid-accidental-termination-mode
;; Package-Requires: ((emacs "24"))
;;
;; This file is not a part of GNU Emacs.
;;
;;
;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;
;;
;;; Commentary:
;;
;; Provides a minor-mode that overrides C-x C-c to avoid accidentally
;; terminating Emacs via said keybinding.

;;; Code:

(defun avoid-accidental-termination-fake-kill-emacs ()
  "Do not kill Emacs."
  (interactive)
  (message "I'm sorry, %s. I'm afraid I can't do that." (user-login-name)))


;;;###autoload
(define-minor-mode avoid-accidental-termination-mode
  "Minor-mode to remove the default `kill-emacs' binding."
  :init-value t
  :lighter nil
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "C-x C-c") 'avoid-accidental-termination-fake-kill-emacs)
            map)
  :global t
  :group 'avoid-accidental-termination
  :require 'avoid-accidental-termination-mode)


(provide 'avoid-accidental-termination-mode)

;;; avoid-accidental-termination-mode.el ends here
