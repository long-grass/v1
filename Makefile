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

york:
	./bin/york/deploy.sh

bundle:
	cd client && npm run build

build:
	docker-compose build && docker-compose up 

deploy-do:
	./bin/digital_ocean/deploy.sh

deploy-aws:
	./bin/aws/deploy.sh

deploy-exo:
	./bin/exo/deploy.sh
