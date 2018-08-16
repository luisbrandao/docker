# Docker premade containers

git clone --recurse-submodules -j2 git@github.com:luisbrandao/docker.git

## php70-stack
Grupo de conteiners destinado ao desenvolvimento de aplicações com php 7.0. Incluido nesse bundle:
 - Nginx (nginx:1.13.5-alpine)
 - Php-fpm (php:7.0-alpine)
 - PostgreSQL (postgres:9.6-alpine)
 - Redis (redis:latest)

Para user essa configuração ou copie para o seu diretório de trabalho o docker-compose.yml e o diretório .docker ou crie um link simbólico para eles. Em seguida, construa os conteiners com:

    docker-compose build       # Apenas prepara os conteiners
    docker-compose up --build  # Executa o build e sobe os conteiners

Para executar comandos dentro do seu projeto use:

    docker-compose exec php-fpm composer install


## luisOs

Imagem basica do centOS projetada para ser usada como alternativa leve de vm com a intenção de facilitar o desenvolvimento de modulos ansible.
