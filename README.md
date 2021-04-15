# Firefighter API

Welcome to the Firefighter API documentation.

- Demo available here https://firefighter-front.herokuapp.com/
- API endpoint here https://firefighter-api.herokuapp.com/

## Setup

### Docker

To run this project with docker, you need:
- `docker`
- `docker-compose`

First build the image:
```
make build
```

Then just run:
```
make up
```

You can visit http://localhost:8080, you should see `Hello World!`.

### Locally

For a local development, you will need those programs installed:

- `openjdk 11`
- `mysql` or `mariadb`

First step is to create a `.env` file containing following keys:

```
MYSQL_HOST=localhost
MYSQL_PORT=3306
DB_NAME=firefighter_api
DB_USER=springuser
DB_PASSWORD=springpassword1234
```

You might want to change values according to your needs.

Next we are going to setup the database, ie creating the user (accordingly to your `.env` file), database and tables needed in the project. For that just run:

```
sudo make setup-database
```

Finally, you can start the project by running:

```
make start
```

You can visit http://localhost:8080, you should see `Hello World!`.

NB: gradle is run in watch mode, which will reload automatically the server when a change is detected.

## Usage

Two routes are availables:

- `POST /firefighter/new`
  Returns the current firefighter for the day.
  `datestring`: optional url parameter to ask for a particular day. `YYY-mm-dd` format.
```
# try
curl -X POST localhost:8080/firefighter/new -d datestring=2021-04-15
```

- `POST /firefighter/skip`
  Shift the current firefighter by 1 each time it's called (if absent or on vacation for example).
  It returns the actual offset used.
```
# try
curl -X POST localhost:8080/firefighter/skip
```
