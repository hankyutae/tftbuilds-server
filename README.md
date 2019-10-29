# tftBuilds server

Deployed server URL: [https://stark-atoll-11428.herokuapp.com/](https://stark-atoll-11428.herokuapp.com/)

## Technology Used

Node.js
Framework: Express
Testing: Mocha/Chai, Supertest
Auth/Security: uuid, jwt, xss, helmet
DB: PostgreSQL, knex


## Setting Up

- Install dependencies: `npm install`
- Create development and test databases: `createdb tftBuilds`, `createdb tftBuilds-test`
- Create database user: `createuser tester`
- Grant privileges to new user in `psql`:
  - `GRANT ALL PRIVILEGES ON DATABASE tftBuilds TO tester`
  - `GRANT ALL PRIVILEGES ON DATABASE "tftBuilds-test" TO user`
- Prepare environment file: `cp example.env .env`
  - Replace values in `.env` with your custom values if necessary.
- Bootstrap development database: `MIGRATION_DB_NAME=tftBuilds npm run migrate`
- Bootstrap test database: `MIGRATION_DB_NAME=tftBuilds-test npm run migrate`

- Need to initialize game data to DB, so run `node ./scripts/allStatsParser`
-- NOTE that to even get game data you need to get lol-parser found at https://github.com/stelar7/lol-parser

## Scripts

Start the application `npm start`

Start nodemon for the application `npm run dev`

Run the tests `npm test`

### Configuring Postgres

For tests involving time to run properly, your Postgres database must be configured to run in the UTC timezone.

1. Locate the `postgresql.conf` file for your Postgres installation.
    - OS X, Homebrew: `/usr/local/var/postgres/postgresql.conf`
2. Uncomment the `timezone` line and set it to `UTC` as follows:

```
# - Locale and Formatting -

datestyle = 'iso, mdy'
#intervalstyle = 'postgres'
timezone = 'UTC'
#timezone_abbreviations = 'Default'     # Select the set of available time zone
```

## Sample Data

- To seed the database for development: `psql -U tester -d tftBuilds -a -f seeds/seed.users.sql`
- To clear seed data: `psql -U tester -d tftBuilds -a -f seeds/trunc.users.sql`## Sample Data

## Endpoints
Unprotected:
- `GET /api/champions`
- `GET /api/items`
- `GET /api/traits`
- `POST /api/users`
- `GET /api/public-builds/:id`
- `POST /api/auth/login`

Protected:
- `GET /api/builds`
- `POST /api/builds`
- `DELETE /api/builds/:id`
- `PATCH /api/builds/make-public/:id`


## Deploying

When your new project is ready for deployment, add a new Heroku application with `heroku create`. This will make a new git remote called "heroku" and you can then `npm run deploy` which will push to this remote's master branch. `https://devcenter.heroku.com/articles/one-off-dynos#one-off-dynos` to run `node ./scripts/allStatsParser.js`


