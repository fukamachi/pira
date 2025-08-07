.PHONY: build

all: build

build:
	sbcl --noinform --dynamic-space-size 2046 --non-interactive \
    --load .qlot/setup.lisp \
    --eval '(ql:quickload :smithy :silent t)' \
    --eval '(smithy:codegen #P"assets/aws-models/models/" #P"services/" :prefix "pira/")'
