### OAuth2 Authorization Server
#### 1. Start a PostgreSQL database
A database with the following configuration needs to be created:
* username: `postgres`
* password: `123`
* database name: `authorization_server`

If you'd like to provide your own configuration, you need to modify application-postgres.yaml.
#### 2. Run the Application
The application will start on port `8080`.
Requests to send:
1. To add a new client:

`curl -v -XPOST -H "content-type: application/json" -d "{\"clientId\":\"client\", \"clientSecret\":\"secret\", \"scope\":\"write\"}" http://localhost:8080/add`

2. To obtain the access token:

`curl -v -X POST -H "Content-Type:application/x-www-form-urlencoded" -d "grant_type=client_credentials&client_id=client&client_secret=secret" http://localhost:8080/oauth2/token`

#### To run application in Docker:
1. Set Spring profile to `docker`
2. Build an image from a Dockerfile:
`docker build -t myapp .`
3. Start Docker Compose
`docker compose up`