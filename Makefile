up:
	docker-compose up -d
	
down:
	docker-compose down

open-project:
	docker exec -it multi-role-auth-laravel-11-using-breeze bash

run:
	docker exec -it multi-role-auth-laravel-11-using-breeze bash -c "php artisan serve"

composer-update:
	docker exec multi-role-auth-laravel-11-using-breeze bash -c "composer update"

data:
	docker exec multi-role-auth-laravel-11-using-breeze bash -c "php artisan migrate"
	docker exec multi-role-auth-laravel-11-using-breeze bash -c "php artisan db:seed"

setup:
	@make build
	@make up 
	@make composer-update

build:
	docker-compose build --no-cache --force-rm