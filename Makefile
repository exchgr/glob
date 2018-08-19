start:
	docker-compose up web

build:
	docker-compose build

setup: build
	docker-compose run web bundle exec rails db:create

rspec:
	docker-compose run web bundle exec rspec ${ARGS}

rspec_unit:
	docker-compose run rspec_unit ${ARGS}

rails:
	docker-compose run web bundle exec rails ${ARGS}

rake:
	docker-compose run web bundle exec rake ${ARGS}

PHONY: start setup rspec
