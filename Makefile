build:
	pipenv lock --pre --clear
	pipenv lock -r > requirements.txt
	docker build . -t marcpartensky/open-web-calendar
push:
	docker push marcpartensky/open-web-calendar
test:
	docker run --rm marcpartensky/open-web-calendar
