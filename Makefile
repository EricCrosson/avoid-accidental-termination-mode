test:
	emacs --version
	emacs -nw --batch --eval '(load-file "avoid-accidental-termination-mode.el")'
