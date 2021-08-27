# Tweetable Individual

## Before getting started

1. Clone this repo and get into it.

2. Rename `.env.sample` to `.env` and fill it up with your github credentials. (DB_HOST will be filled later)

3. Run `docker compose up`. This will give you your db_host container name(tweetable-individual_xxxx_db_1)

4. On a different window run `docker compose exec client bash`.

5. Inside the bash terminal run the `bootstrap` command.

6. Set up your `config/database.yml` file following the rules at [the instructions](https://github.com/codeableorg/tweetable-individual/blob/main/instructions.md#the-database).

7. Install all the gems with `bundle install`, if it says something like _your bundle is locked..._ run `bundle update`.

7.a if an _error Couldn't find an integrity file_ appears, run `yarn install --check-files`.

8. Initialize your DB: `rails db:create`

## About

### The app

You can access your running app looking at `localhost:3000`.

> To be able to see your app running on any browser, run it using `rails server -b 0.0.0.0`.
> Otherwise the server will start but you won't be able to see anything since the rails app is just showing for its local container.

### The database

The file `config/database.yml` should be configured like the next example.

```ruby
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password: <%= ENV['PGPASSWORD'] %>
  # For details on connection pooling, see Rails configuration guide
  # https://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
```

If you want to connect to your db from a GUI client, you can use the next credentials:

```
  username: postgres
  password: codeable
  host: localhost
  port: 54320
  database: <rails_db_dev_name>
```
