start:
	rm -f api/tmp/pids/server.pid && docker-compose up
stop:
	docker-compose down
setup:
	docker-compose build && docker-compose run api bundle exec rake db:create && docker-compose run api bundle exec rake db:migrate && docker-compose run api bundle exec rake db:seed 

reset: 
	docker-compose down && docker-compose run api bundle exec rake db:drop && docker-compose run api bundle exec rake db:create && docker-compose run api bundle exec rake db:migrate && docker-compose run api bundle exec rake db:seed && docker-compose build nginx

clean:
	ls rails/tmp/pids/server.pid

bundle:
	cd web  && npm run build

build:
	docker-compose build && docker-compose up 

deploy:
	./bin/digital_ocean/deploy.sh

