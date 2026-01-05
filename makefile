.PHONY: help clean check-folder-% build-%

help:
	@echo "make build-<folder_name>"

check-folder-%:
	@if [ ! -d "$*" ]; then \
		echo "Error: Folder '$*' does not exist"; \
		exit 1; \
	fi

build-%: check-folder-%
	$(eval FOLDER := $*)
	rgbasm -Werror -Weverything -o bin/$(FOLDER).o $(FOLDER)/main.asm
	rgblink --dmg --tiny -o bin/$(FOLDER).gb bin/$(FOLDER).o
	rgbfix --title $(FOLDER) --pad-value 0 --validate bin/$(FOLDER).gb

clean:
	rm -f bin/*.o bin/*.gb