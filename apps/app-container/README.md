
# Run locally

## With normal Gemfile

```
be rails s
```

## With custom Gemfile

```
BUNDLE_GEMFILE=Gemfile.development be rails s
```

# Manual deployment

## Heroku

```
git subtree push --prefix apps/app-container heroku main
```

### Clear build cache

- https://help.heroku.com/18PI5RSY/how-do-i-clear-the-build-cache

```
heroku builds:cache:purge -a kitdemo-production
```

# Production

## Migration

```
RAILS_ENV=production be rails db:migrate:primary_ops
```


# Testing

```sh
RAILS_ENV=test bundle exec rails db:create:primary_ops
RAILS_ENV=test bundle exec rails db:migrate:primary_ops
```