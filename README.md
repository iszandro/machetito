# machetito

[![Codeship Status for iszandro/machetito](https://app.codeship.com/projects/d55f3fe0-9a1e-0137-e017-76660cd27cc4/status?branch=master)](https://app.codeship.com/projects/358149)

`machetito` is an app to help you practice and learn Japanese words. Quizzes will help you to write the correct word, hiragana, katakana or meaning.

## Ruby version

`Ruby 2.6.3`

## System dependencies

* `PostgreSQL`
* `Redis`
* `Chrome`, for system tests

## Configuration

```bash
$ bundle exec bin/setup
```

## `Sidekiq`
`machetito` uses `Sidekiq` as its enqueue backend.

```bash
$ bundle exec sidekiq
```

## How to run the test suite

```bash
$ bundle exec rails test
$ bundle exec rails test:system
```

## Deployment instructions

Once a PR is merged into `master`, it will be deployed to `Heroku`
