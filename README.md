# glob
[![Maintainability](https://api.codeclimate.com/v1/badges/e86d2107e055dbe9e9fe/maintainability)](https://codeclimate.com/github/exchgr/glob/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/e86d2107e055dbe9e9fe/test_coverage)](https://codeclimate.com/github/exchgr/glob/test_coverage)

Social blogging platform to replace Twitter

## System dependencies
- Docker 18.06.0 or later

## Setup
To set up the entire app from scratch, including the database, run:

```
make setup
```

To only rebuild the docker image (including Bundler dependencies), run:

```
make build
```

## Running the app
To start the entire web app in development mode, including the database, run:

```
make start
```

and connect to http://localhost:3000

## Testing
To run all tests, run:
```
make rspec ARGS="..."
```

To run only the unit tests, run:
```
make rspec_unit ARGS="..."
```

## Running arbitrary rake/rails commands
```
make rails ARGS="..."
```
or
```
make rake ARGS="..."
```
