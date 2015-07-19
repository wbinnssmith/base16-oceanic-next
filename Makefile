NAME = base16-oceanic-next
PREVIEW = base16-oceanicnext.html
BASE16 = ./base16-builder/base16
PAGERES = ./node_modules/.bin/pageres

default: build colors preview.png

node_modules:
	@npm install

base16-builder:
	@rm -rf base16-builder
	@git clone https://github.com/chriskempson/base16-builder.git

colors: build
	@ln -sf vim $@

preview.png: build node_modules
	@$(PAGERES) --selector 'body > div > pre' --filename preview preview/$(PREVIEW) 1600x1200

clean:
	@find . -type d ! -path '*/\.*' ! -path '\.' -print0 | xargs -0 rm -rf
	@rm -rf colors preview.png

build: $(NAME).yml base16-builder
	@$(BASE16) -s $(NAME).yml
	@cp -R ./base16-builder/output/ .

.PHONY: build clean
