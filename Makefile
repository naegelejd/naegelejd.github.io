OUTPUT := index.html
STYLE := naegelejd.css
SOURCE := naegelejd.md
EXTRA := footer.html
OPTS := --standalone --smart --toc --toc-depth=1 -f markdown+definition_lists

all: $(OUTPUT)

release: EXTRA := footer+analytics.html
release: $(OUTPUT)

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
