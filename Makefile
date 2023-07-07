OUTPUT := index.html resume.html
SOURCE := naegelejd.md
HEAD := head.html
HEADER := header.html
FOOTER := footer.html
STYLE := naegelejd.css
OPTS := --standalone -f markdown+definition_lists+smart

all: $(OUTPUT)

%.html: %.md $(HEAD) $(HEADER) $(FOOTER)
	pandoc $(OPTS) -t html5 -H $(HEAD) -B $(HEADER) -A $(FOOTER) -c $(STYLE) -o $@ $<

.PHONY: test
test: $(OUTPUT)
	go run server.go

.PHONY: clean
clean:
	rm -f $(OUTPUT)

#naegelejd.pdf: $(SOURCE)
#	pandoc $(OPTS) --latex-engine=xelatex -t latex -o $@ $(SOURCE)
