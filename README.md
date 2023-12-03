# README

This is a boilerplate for a project using Ruby on Rails and GraphQL.

## Versions

- Ruby: `3.2.2`
- Rails: `7.1.2`
- MySQL: `8.2.0`

## How to set up

```
$ docker-compose build
$ docker-compose run app rails new . --force --database=mysql --skip-docker
$ docker-compose up
$ docker-compose exec app rails db:create
$ docker-compose exec rails db:migrate
$ docker-compose exec rails db:seed_fu
```
