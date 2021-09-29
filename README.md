# cuci.in
HOW TO SETUP BACKEND
=========

1. Install project dependencies
```bash
composer install
```

2. Generate passport key
```bash
php artisan key:generate
php artisan migrate
php artisan passport:install
php artisan passport:keys
```

3. setup .env file from .env.example
```bash
DB_CONNECTION=mysql
DB_HOST=db # Change this if not using docker
DB_PORT=3306
DB_DATABASE=cuci_in
DB_USERNAME=root
DB_PASSWORD=root
```

4. seed database
install migrate from [docker-compose/init_db.sql](./docker-composer/init_db.sql)

5. laravel artisan serve
```bash
php artisan serve
```

HOW TO SETUP USING DOCKER
===

1. Docker Compose Up
```bash
docker-compose up -d
```

2. Run Following command to configure
```bash
docker-compose exec app composer install --no-dev --no-interaction -o
docker-compose exec app php artisan key:generate
docker-compose exec app php artisan migrate
docker-compose exec app php artisan passport:install
docker-compose exec app php artisan passport:keys
```
