.PHONY: build

all: build

build:
	sbcl --noinform --dynamic-space-size 2046 --non-interactive \
    --load .qlot/setup.lisp \
    --eval '(ql:quickload :pira-core/codegen :silent t)' \
    --eval '(pira/codegen:codegen)'
