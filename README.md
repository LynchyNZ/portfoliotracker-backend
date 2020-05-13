## Portfolio Tracker Server

### Project Links

- [Slack](https://lynchyworkspace.slack.com/)
- [Confluence](https://lynchy.atlassian.net/wiki/spaces/PT/overview/)
- [JIRA](https://lynchy.atlassian.net/browse/PT)
- [Support](https://lynchy.atlassian.net/servicedesk)
- [Status page](https://lynchy.statuspage.io/)

### Prerequisites for local development

- Node, npm/Yarn, Git, IDE (VS Code recommended)
- PostgreSQL

### Stack

- GraphQL
- PostGraphile
- PostgreSQL

### Tools

- Docker
- Circle CI

### Docker

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

### GraphQL Examples:

#### Create a User (Mutation):

`mutation {
  createUser (
    input: {
      user: {
        name: "Dan",
        email: "dan@lynchy.co.nz",
        password: "123456",
      }
    }) {
    user {
      id
      name
      email
      password
    }
  }
}`

#### Create an Instrument (Mutation):

`mutation {
  createInstrument (
    input: {
      instrument: {
        code: "MSFT",
        description: "Microsoft",
      }
    }) {
    instrument {
      id
      code
      description
    }
  }
}`

#### Create a Holding (A user has a holding which is an instrument with amount):

`mutation {
  createHolding (
    input: {
      holding: {
        userId: 1,
        instrumentId: 1,
        amount: "20.0",
      }
    }) {
    holding {
      userId
      instrumentId
      amount
    }
  }
}`
    
#### Get all Users and all user's holdings:

`query {
  allUsers {
    nodes {
      id
      name
      holdingsByUserId {
        nodes {
          amount
          instrumentByInstrumentId {
            id
            description
          }
        }
      }
    }
  }
}`