# Environment Variables

This page provides an overview of all environment variables used in StageStream. These variables configure the frontend, backend, and MediaMTX components.

## Frontend Environment Variables

| Variable     | Description                              | Example |
|-------------|------------------------------------------|---------|
| `WEB_PORT`   | Specifies the port the Frontend will bind to | `3000` |
| `STREAM_URL` | Specifies the URL MediaMTX runs on      | `http://localhost:8889` |
| `API_URL`    | Specifies the URL the API runs on       | `http://localhost:4000` |

## Backend Environment Variables

| Variable         | Description                                           | Example |
|-----------------|------------------------------------------------------|---------|
| `WEB_PORT`       | Specifies the port the Backend will bind to              | `4000` |
| `JWT_SECRET`     | Secret key used for signing JSON Web Tokens (JWT)    | `supersecretkey` |
| `USE_MYSQL`      | Determines if MySQL should be used (`true` or `false`) | `true` |
| `MYSQL_HOST`     | Specifies the database host (IP/Domain)              | `127.0.0.1` |
| `MYSQL_USER`     | Username for MySQL database login                    | `admin` |
| `MYSQL_PASSWORD` | Password for MySQL user                              | `password123` |
| `MYSQL_DATABASE` | Name of the MySQL database                           | `stagedb` |
| `SQLITE_PATH`    | Filepath where SQLite database will be stored        | `/data/db/` |
| `SQLITE_FILE`    | Name of the SQLite database file                     | `stage.db` |
| `ADMIN_USERNAME` | Admin account username                               | `admin` |
| `ADMIN_PASSWORD` | Admin account password                               | `securepass` |
| `LOG_PATH`       | Filepath for storing log files                       | `/var/logs/stage.log` |
| `VIDEO_URL`      | URL MediaMTX runs on                                 | `http://localhost:8889` |
| `VIDEO_API`      | URL of the MediaMTX API                              | `http://localhost:8888` |
| `FRONT_END_URL`  | URL of the frontend application                      | `http://localhost:3000` |

## MediaMTX Configuration
The MediaMTX configuration file (`mediamtx.yml`) defines how the streaming service operates. If `STREAM_URL` or `VIDEO_URL` is modified, ensure the MediaMTX `webrtcAddress` settings align accordingly. Example changes in `mediamtx.yml`:

```yaml
webrtcAddress: :8889
```

If MediaMTX is run in Docker, update the `mediamtx.yml` file in the MediaMTX folder from the docker compose repo.

Addionally, make sure the backend and frontend urls are set according to your server ip / domain.

---
For more details, refer to:
- [Backend Environment Variables](https://github.com/StageStream/Backend/blob/main/env.txt)
- [MediaMTX Configuration](https://github.com/StageStream/StageStream/blob/main/MediaMTX/mediamtx.yml)

