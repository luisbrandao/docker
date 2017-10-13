# Docker premade containers
## php70-laravel
Grupo de conteiners destinado ao desenvolvimento de aplicações com laravel. Incluido nesse bundle:
 - Nginx (nginx:1.13.5-alpine)
 - php-fpm (php:7.0-alpine)
 - PostgreSQL (postgres:9.6-alpine)
 - redis (redis:latest)

Para usar essa configuração, crie um link dentro do seu projeto para php70-laravel/docker-compose.yml e execute:

    docker-compose build       # Apenas prepara os conteiners
    docker-compose up --build  # Executa o build e sobe os conteiners
