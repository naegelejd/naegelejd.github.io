OUTPUT := index.html
STYLE := naegelejd.css
SOURCE := naegelejd.md
EXTRA := footer+analytics.html
OPTS := --standalone --smart --toc --toc-depth=1 -f markdown+definition_lists

all: $(OUTPUT)

debug: EXTRA := footer.html
debug: $(OUTPUT)

index.html: $(SOURCE) $(STYLE) $(EXTRA)
	pandoc $(OPTS) -t html5 -A $(EXTRA) -c $(STYLE) -o $@ $(SOURCE)

%.css: %.scss
	sass $< $@

.PHONY: test
test: $(OUTPUT)
	go run server.go

.PHONY: clean
clean:
	rm -f $(OUTPUT) $(STYLE) $(STYLE).map
