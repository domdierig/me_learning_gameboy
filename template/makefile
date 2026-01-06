.PHONY: build clean

build:
	mkdir -p bin
	rgbasm -Werror -Weverything -o bin/template-main.o main.asm
	rgbasm -Werror -Weverything -o bin/template-sample.o sample.asm
	rgblink --dmg --tiny --map bin/template-sample.map --sym bin/template-sample.sym -o bin/template.gb bin/template-main.o bin/template-sample.o
	rgbfix --title template --pad-value 0 --validate bin/template.gb

clean:
	rm -f -- bin/template*