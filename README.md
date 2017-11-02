# drinks

## TLDR

All commands should be run from the makefile. If you don't have make you can copy paste the commads and run them as shell scripts


### Prerequisites

```
docker
docker-compose
make
```

### Usage

```
make setup
```

Installs packages and builds the 3 containers

```
make start
```

```
make stop
```

Stars up the application on port 3108 

## Explanation

* Web container runs React. Webpack-dev-server runs dev 
* API container runs Rails
* Nginx reverse proxy between web and api
* No CORS configuration needed, handled by nginx
* All appropriate commands in Makefile

## TODO

* [ ] Search/Paginate
* [ ] Display Comments/Guests
* [ ] Map
* [ ] Deployment 
* [ ] Documentation

