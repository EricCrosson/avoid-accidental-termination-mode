# avoid-accidental-termination-mode [![Build Status](https://travis-ci.org/EricCrosson/avoid-accidental-termination-mode.svg?branch=master)](https://travis-ci.org/EricCrosson/avoid-accidental-termination-mode) [![Version](https://img.shields.io/github/tag/EricCrosson/avoid-accidental-termination-mode.svg)](https://github.com/EricCrosson/avoid-accidental-termination-mode/releases)

> Avoid accidentally killing emacs

## Install

With [Quelpa](https://framagit.org/steckerhalter/quelpa)

``` {.sourceCode .lisp}
(use-package avoid-accidental-termination-mode
  :quelpa (avoid-accidental-termination-mode
           :fetcher github
           :repo "EricCrosson/avoid-accidental-termination-mode"))
```

Or manually, after downloading into your `load-path`

``` {.sourceCode .lisp}
(require 'avoid-accidental-termination-mode)
```

## Use

To kill emacs, invoke `kill-emacs`.  Consider binding this to less
frequently-used keys.

``` {.sourceCode .lisp}
(evil-leader/set-key
    "qq" 'kill-emacs
    "qQ" 'save-buffers-kill-terminal)
```

## Example

After pressing `C-x C-c`

![Screenshot after pressing `C-x C-c`](https://raw.githubusercontent.com/EricCrosson/avoid-accidental-termination-mode/master/img/demo.png)

## License

GPL 2 (or higher) © [Free Software Foundation, Inc](http://www.fsf.org/about).
