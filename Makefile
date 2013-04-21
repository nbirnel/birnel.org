SITE = birnel.org
DEST = /var/www/${SITE}/public

all :: recent recent-blog static push

publish :: static push

static ::
	sw ${SITE}
	cp robots.txt google9cf5b7c579fa2639.html ${SITE}.static

recent ::
	./mk-recent ${SITE}

recent-blog ::
	./mk-recent 'birnel.org/~noah/blog/'

bookshelf ::
	cd 'birnel.org/~noah/bookshelf/' && gmake

push ::
	rsync -avz ${SITE}.static/ ${DEST}

clean ::
	rm -rf ${SITE}.static

.PHONY : static all recent recent-blog push clean publish
