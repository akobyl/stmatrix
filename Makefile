.PHONY: init
init:
	meson setup --cross-file meson/cross/arm.txt --cross-file meson/cross/STM32G474RE.txt build

.PHONY: clean
clean:
	rm -rf build
	rm -rf meson

.PHONY: build
build:
	ninja -C build
