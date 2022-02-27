up:
	docker-compose up --build

migrations:
	docker-compose run --rm web python manage.py makemigrations

migrate:
	docker-compose run --rm web python manage.py migrate

superuser:
	docker-compose run --rm web python manage.py createsuperuser

pre-commit:
	docker-compose run --rm web pre-commit run --all-files
