TEMPLATE := template.html
STYLE := stylesheets/naegelejd.css
CONTENT := index.html about.html projects.html resume.html
SOURCE := $(STYLE) $(CONTENT)

all: $(SOURCE)

%.html: content/%.md $(TEMPLATE) ga.html
	pandoc -t html5 -o $@ --template=$(TEMPLATE) -H ga.html $<

%.css: %.scss
	sass $< $@

test: $(SOURCE)
	go run server.go

.PHONY: clean
clean:
	rm -f $(SOURCE)
