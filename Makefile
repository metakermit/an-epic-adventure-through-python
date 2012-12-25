SOURCE_FILE_NAME = an-epic-adventure-through-python.md
BOOK_FILE_NAME = an-epic-adventure-through-python

HTML_BUILDER = pandoc

PDF_BUILDER = pandoc
PDF_BUILDER_FLAGS = \
	--latex-engine xelatex \
	--template ./style/template.tex \
	--listings

EPUB_BUILDER = pandoc
EPUB_BUILDER_FLAGS = \
	--epub-cover-image

MOBI_BUILDER = kindlegen

html:
	$(HTML_BUILDER) $(SOURCE_FILE_NAME) -o out/$(BOOK_FILE_NAME).html

pdf:
	$(PDF_BUILDER) $(PDF_BUILDER_FLAGS) $(SOURCE_FILE_NAME) -o out/$(BOOK_FILE_NAME).pdf

#mongodb.epub: en/title.png en/title.txt en/mongodb.markdown
#	$(EPUB_BUILDER) $(EPUB_BUILDER_FLAGS) $^ -o $@

#en/mongodb.mobi: en/mongodb.epub
#	$(MOBI_BUILDER) $^

clean:
	rm out/*
#	rm -f */$(BOOK_FILE_NAME).pdf
#	rm -f */$(BOOK_FILE_NAME).epub
#	rm -f */$(BOOK_FILE_NAME).mobi