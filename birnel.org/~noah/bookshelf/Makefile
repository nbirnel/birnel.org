INDEX = index
HTML = ${INDEX}.html
EXPORT = export.csv

all :: ${HTML} clean

${HTML} :: ${EXPORT}
	./extract-books ${EXPORT}  > ${INDEX}.md
	md2html.awk ${INDEX}.md >$@

clean ::
	rm -f ${INDEX}.md

.PHONY : clean all
