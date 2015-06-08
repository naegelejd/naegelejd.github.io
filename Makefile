OUTPUT := index.html resume.html links.html snippets.html
STYLE := naegelejd.css
SOURCE := naegelejd.md
FOOTER := footer.html
HEADER := header.html
OPTS := --standalone --smart -f markdown+definition_lists

all: $(OUTPUT) $(STYLE)

debug: FOOTER := footer-no-analytics.html
debug: $(OUTPUT)

%.html: %.md $(HEADER) $(FOOTER)
	pandoc $(OPTS) -t html5 -B $(HEADER) -A $(FOOTER) -c $(STYLE) -o $@ $<

%.css: %.scss
	sass $< $@

.PHONY: test
test: $(OUTPUT)
	go run server.go

.PHONY: clean
clean:
	rm -f $(OUTPUT) $(STYLE).map

#naegelejd.pdf: $(SOURCE)
#	pandoc $(OPTS) --latex-engine=xelatex -t latex -o $@ $(SOURCE)
