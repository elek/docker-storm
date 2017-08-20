

VERSION ?= latest
URL ?= "http://xenia.sote.hu/ftp/mirrors/www.apache.org/storm/apache-storm-1.1.1/apache-storm-1.1.1.tar.gz"

build:
	echo $(URL) > storm/url
	docker build -t flokkr/storm:$(VERSION) storm
	docker tag flokkr/storm:$(VERSION) flokkr/storm:build
	docker build -t flokkr/storm-nimbus:$(VERSION) storm-nimbus 
	docker build -t flokkr/storm-supervisor:$(VERSION) storm-supervisor
	docker build -t flokkr/storm-ui:$(VERSION) storm-ui

deploy:
	docker push flokkr/storm:$(VERSION)
	docker push flokkr/storm-nimbus:$(VERSION)
	docker push flokkr/storm-supervisor:$(VERSION)
	docker push flokkr/storm-ui:$(VERSION)

.PHONY: deploy build
