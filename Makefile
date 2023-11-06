.PHONY: init
init:
	git submodule update --init --recursive --remote
	meson setup --cross-file meson/cross/arm.txt --cross-file meson/cross/STM32.txt build

.PHONY: clean
clean:
	rm -rf build
	rm -rf meson

.PHONY: build
build:
	ninja -C build
