.PHONY: build init clean re_init test
CURDIR := $(shell pwd)
export GOPATH=${CURDIR}/output
BINARY_NAME = secret_manager


build:
	echo "build..."
	cd ${CURDIR}/build
	go build -o ${BINARY_NAME} -v
	echo "build end"
test:  
	cd ${CURDIR}/build
	go test -v ./...
	

init:
	echo "init project...."
	ln -s ${CURDIR}/config ${CURDIR}/output/
	ln -s ${CURDIR}/src ${CURDIR}/build/
	ln -s ${CURDIR}/main.go ${CURDIR}/build/
	echo "init end"

clean:
	echo "clean build result..."
	cd ${CURDIR}/output
	rm -rf ./bin
	rm -rf ./pkg
	echo "clean end"

re_init: clean
	echo "re_init project..."
	rm ${CURDIR}/output/config
	rm ${CURDIR}/build/src
	rm ${CURDIR}/build/main.go
	make init

