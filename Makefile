all: clean build

build:
	swift build -c release --arch arm64 --arch x86_64

release: clean build
	gh release create $(VERSION) \
		--title $(VERSION) \
		--generate-notes \
		.build/apple/Products/Release/displays

clean:
	rm -rf .build
