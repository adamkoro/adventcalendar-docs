# Admin API

Admin API is a REST API for managing users. Authentication is based on JWT(Json Web Token).
This application stores data in PostgreSQL database. It has 2 main parts:

- [admin-api-init](https://github.com/adamkoro/adventcalendar-backend/tree/main/admin-api-init) - application for database initialization
- [admin-api](https://github.com/adamkoro/adventcalendar-backend/tree/main/admin-api) - main application (REST API)

## Environment variables

| Variable     | Description              | Default Value  | Available Values   |
| ------------ | ------------------------ | -------------- | ------------------ |
| LOG_LEVEL    | Log level                | info           | info; error; debug |
| SECRET_KEY   | Secret key for JWT token | secret         | string             |
| PORT         | API port                 | 8080           | number             |
| METRICS_PORT | API metrics port         | 8081           | number             |
| DB_USER      | Database user            | adventcalendar | string             |
| DB_PASSWORD  | Database user password   | adventalendar  | string             |
| DB_HOST      | Database host            | localhost      | string             |
| DB_PORT      | Databaase port           | 5432           | number             |
| DB_NAME      | Database name            | adventcalendar | string             |
| DB_SSLMODE   | SSL mode                 | disable        | disable            |

## Public endpoints

- `GET` **/api/ping**
  - Health check

- `GET` **/metrics**
  - Prometheus metrics

## Private endpoints - Authentication required

Authentication is required for all endpoints below.
Based on JWT(Json Web Token) authentication. Before using private endpoints, you need to get JWT token from `/api/auth/login` endpoint.

- `GET` **/api/admin/usermanage/user**
  - Get user
  - Payload (example):

    ```json
    {
      "username": "testuser1"
    }
    ```

- `POST` **/api/admin/usermanage/user**
  - Create user
  - Payload (example):

    ```JSON
    {
      "username": "testuser1",
      "email": "testuser1@test.local",
      "password": "testpassword1"
    }
    ```

- `PUT` **/api/admin/usermanage/user**
  - Update user
  - Payload (example):

    ```JSON
    {
      "username": "testuser1",
      "email": "testuser1@gmail.com",
      "password": "testpassword1"
    }
    ```

- `DELETE` **/api/admin/usermanage/user**
  - Delete user
  - Payload (example):

    ```JSON
    {
      "username": "testuser1"
    }
    ```

- `GET` **/api/admin/usermanage/users**
  - Get all users
