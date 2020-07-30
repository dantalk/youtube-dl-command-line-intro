.DEFAULT_GOAL := help
.PHONY : help guides


help:
	@echo 'Run `make guides` to build the guides'


guides: clean mainguide


clean:
	rm -f guides/mainguide.md


mainguide: guides/mainguide.md


# uses jonschlinkert/markdown-toc
# https://github.com/jonschlinkert/markdown-toc#install
guides/mainguide.md: _content/mainguide/
	find "$<"*.md -exec cat {} \+ > $@
	markdown-toc -i $@
