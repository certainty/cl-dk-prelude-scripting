CORENAME="cl-dk-prelude-scripting.core"
SCRIPTWRAPPER="clscript"

build:
	sbcl --eval '(ql:quickload :cl-dk-prelude-scripting)' --eval '(quit)'

image: build
	sbcl --non-interactive --load build-core.lisp

install: image install-core
	@mkdir -p ~/.local/bin
	@cp $(SCRIPTWRAPPER) ~/.local/bin
	@echo "Script installed in ~/.local/bin/$(SCRIPTWRAPPER)"

install-core: image
	@mv $(CORENAME) ~/common-lisp/
	@echo "Core installed in ~/common-lisp/$(CORENAME)"






