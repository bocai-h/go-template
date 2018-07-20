CURDIR := $(shell pwd)
.PHONY: build
build:
	echo "build"
init:
	echo "init project...."
	ln -s ${CURDIR}/config ${CURDIR}/output/
	ln -s ${CURDIR}/src ${CURDIR}/build/

