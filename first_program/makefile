.PHONY: build clean

build:
	mkdir -p bin
	rgbasm -Werror -Weverything -o bin/first_program.o main.asm
	rgblink --dmg --tiny -o bin/first_program.gb bin/first_program.o
	rgbfix --title first_program --pad-value 0 --validate bin/first_program.gb

clean:
	rm -f bin/first_program.o bin/first_program.gb