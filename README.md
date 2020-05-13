## Portfolio Tracker Backend

This is the backend project for a Portfolio Tracker app, used alongside [Portfolio Tracker Frontend](https://github.com/LynchyNZ/portfoliotracker-frontend)

### Project Links

- [GitHub Frontend](https://github.com/LynchyNZ/portfoliotracker-frontend)
- [GitHub Backend](https://github.com/LynchyNZ/portfoliotracker-backend)
- [Slack](https://lynchyworkspace.slack.com/)
- [Confluence](https://lynchy.atlassian.net/wiki/spaces/PT/overview/)
- [JIRA](https://lynchy.atlassian.net/browse/PT)
- [Support](https://lynchy.atlassian.net/servicedesk)
- [Status page](https://lynchy.statuspage.io/)

### Project Stack

- React (with TypeScript)
- GraphQL
- Postgraphile
- Docker

### Setup Local Environment

1) Clone Repos:
- `git clone https://github.com/LynchyNZ/portfoliotracker-frontend.git`
- `git clone https://github.com/LynchyNZ/portfoliotracker-backend`

2) Get updated copy of files where sensitive info has been removed (keys, DB credentials and schemas)
- (message Lynchy on [Slack](https://lynchyworkspace.slack.com/))

3) Install Docker

4) Run the following to build Docker containers for frontend (Dev) and backend:
- `docker-compose up -d` (in portfolio-backend folder)
- `docker-compose -f docker-compose.dev.yml up -d --build` (in portfoliotracker-frontend folder)

5) View app at
[http://localhost:3001/](http://localhost:3001/)
and the graphiQL tool at
  [http://localhost:5433/graphiql](http://localhost:5433/graphiql)


### Backend-specific Docker instructions

You can run the server and DB in Docker containers using the following commands:

- `docker-compose up -d`

  Builds the frontend in development mode (npm start)

If you make changes to the database schema and need to re-initialise the database, run the following commands:
1) `docker-compose down`
2) `docker volume rm portfoliotracker-server_db`
3) `docker rmi portfoliotracker-db`
4) `docker-compose up -d`

or

`docker-compose down;docker volume rm portfoliotracker-server_db;docker rmi portfoliotracker-db;docker-compose up -d`
