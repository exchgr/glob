# glob

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
```
make rspec ARGS="..."
```

## Running arbitrary rake/rails commands
```
make rails ARGS="..."
```
or
```
make rake ARGS="..."
```
