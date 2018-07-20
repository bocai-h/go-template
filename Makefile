CURDIR := $(shell pwd)
.PHONY: build
build:
	echo "build"
init:
	echo "init project...."
	ln -s ${CURDIR}/config ${CURDIR}/output/config
	#mkdir ${CURDIR}/build/src
	ln -s ${CURDIR}/app ${CURDIR}/build/src

