TEMPLATE := index.tmpl
STYLE := stylesheets/naegelejd.css
CONTENT := index.html about.html projects.html resume.html
ANALYTICS := analytics.stub
OPTS :=
SOURCE := $(STYLE) $(CONTENT)

all: $(SOURCE)

release: OPTS += -H $(ANALYTICS)
release: $(SOURCE) $(ANALYTICS)

%.html: content/%.md $(TEMPLATE) $(ANALYTICS)
	pandoc -t html5 -o $@ --template=$(TEMPLATE) $(OPTS) $<

%.css: %.scss
	sass $< $@

test: $(SOURCE)
	go run server.go

.PHONY: clean
clean:
	rm -f $(SOURCE)
