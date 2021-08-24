
# Run locally

## With normal Gemfile

```
be rails s
```

## With custom Gemfile

```
BUNDLE_GEMFILE=Gemfile.development be rails s
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