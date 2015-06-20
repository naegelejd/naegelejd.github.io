OUTPUT := index.html resume.html links.html snippets.html
STYLE := naegelejd.css
SOURCE := naegelejd.md
HEAD := head.html
HEADER := header.html
FOOTER := footer.html
OPTS := --standalone --smart -f markdown+definition_lists

all: $(OUTPUT) $(STYLE)

debug: FOOTER := footer-no-analytics.html
debug: $(OUTPUT)

%.html: %.md $(HEAD) $(HEADER) $(FOOTER)
	pandoc $(OPTS) -t html5 -H $(HEAD) -B $(HEADER) -A $(FOOTER) -c $(STYLE) -o $@ $<

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
