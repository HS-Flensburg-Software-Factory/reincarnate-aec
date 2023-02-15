JOBS ?= 1
OCBFLAGS ?=
JSCFLAGS ?=

DEP = *.ml parsers/*.ml parsers/*.mll parsers/*.mly
OCB = ocamlbuild -use-ocamlfind -j $(JOBS) $(OCBFLAGS)

ZSJ = zarith_stubs_js/caml_custom_ops.js zarith_stubs_js/runtime.js zarith_stubs_js/biginteger.js
OJS = $(OCB) -plugin-tag "package(js_of_ocaml.ocamlbuild)"
JSC = js_of_ocaml --disable genprim --pretty +weak.js $(JSCFLAGS) $(ZSJ)

.PHONY: default
default: Main.native

.PHONY: all
all: default ide Fuzz.native

##
## executables
##

%.native: %.ml $(DEP)
	$(OCB) $@

%.inferred.mli: %.ml $(DEP)
	$(OCB) $@

##
## ide
##

zarith_stubs_js: $(ZJS)
	wget -q -P zarith_stubs_js/ \
		https://raw.githubusercontent.com/janestreet/zarith_stubs_js/v0.12.0/runtime.js \
		https://raw.githubusercontent.com/janestreet/zarith_stubs_js/v0.12.0/biginteger.js
	printf '//Provides: caml_custom_ops\nvar caml_custom_ops = {};\n' > zarith_stubs_js/caml_custom_ops.js

%.byte: %.ml $(DEP)
	$(OJS) $@

%.js: %.byte $(DEP) zarith_stubs_js
	$(JSC) $<

ide/JSLib.js: JSLib.js
	cp $< ide/

.PHONY: ide
ide: ide/JSLib.js

##
## clean
##

.PHONY: clean
clean:
	rm -f JSLib.js
	ocamlbuild -clean
	@echo

.PHONY: clean-tmp
clean-tmp:
	rm -rf tmp/*

.PHONY: clean-ide
clean-ide:
	rm -rf zarith_stubs_js/

.PHONY: clean-all
clean-all: clean clean-ide clean-tmp
