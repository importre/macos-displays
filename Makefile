bin_path := $(shell brew --prefix)/bin

all: clean install

build:
	swift build -c release --arch arm64 --arch x86_64

install: uninstall build
	cp .build/apple/Products/Release/Displays "${bin_path}/displays"

uninstall:
	rm -f "${bin_path}/displays"

clean:
	rm -rf .build
