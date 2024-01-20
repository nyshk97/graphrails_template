# README

This is a boilerplate for a project using Ruby on Rails and GraphQL.

## Versions

- Ruby: `3.2.2`
- Rails: `7.1.2`
- MySQL: `8.2.0`
- graphql-ruby: `2.1.6`

## Includes
- Settings for Docker to build a development environment
- `User` and `Line` models
  - and its seed data
- Basic GraphQL configuration
  - Install `graphql-ruby`
  - Created `users_resolver`, `user_type`, `line_type`
- DataLoader settings to avoid N+1 queries
  - with `graphql-batch`
- Several gems to improve development efficiency
  - `graphiql`、`graphql-rails_logger`、`dotenv-rails`

## How to set up

```
$ docker-compose build
$ docker-compose up
$ docker-compose exec app sh
# rails db:create
# rails db:migrate
# rails db:seed_fu
$ open http://localhost:3000
$ open http://localhost:3000/graphiql
```

## Request examples

```shell
$ curl -X POST \
       -H "Content-Type: application/json" \
       --data '{ "query": "{ users { id name age } }" }' \
       http://localhost:3000/graphql

{"data":{"users":[{"id":"1","name":"Goro Shigeno","age":20},{"id":"2","name":"Joe Gibson","age":41},{"id":"3","name":"Taiga Shimizu","age":18}]}}
```
<img width="1710" alt="CleanShot 2023-12-03 at 22 08 39@2x" src="https://github.com/nyshk97/graphrails_template/assets/38527299/b89abe03-0ac9-4136-8875-ddf131af41c7">
