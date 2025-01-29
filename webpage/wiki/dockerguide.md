# StageStream Docker-Compose Setup

StageStream is optimized for deployment with Docker Compose. If you don’t have Docker Compose installed, follow the steps in our [Docker Compose Installation Guide](https://stagestream.jxnxsdev.me/guide.html#installdc).

## Preparing the Project

To get started, clone the Docker Compose project repository by running:

```bash
git clone https://github.com/StageStream/StageStream.git
```

Within the project folder, you’ll find two environment files. Be sure to configure these based on the instructions in our [Environment Guide](https://stagestream.jxnxsdev.me/guide.html#environment).

## Network Configuration

StageStream is designed to run on the host network of the system it’s deployed on. While it is possible to configure it to run within a Docker network, this setup is not officially supported.

By using the host network, you won’t need to manually configure port forwarding out of the container.

If you plan to run both the frontend and backend on the same domain, we recommend using nginx or nginx-proxy-manager as a reverse proxy. This should also work for mediamtx, although it hasn't been fully tested.

**Note:** StageStream is primarily designed to run within a local network.

## Databases

By default, StageStream uses SQLite as its database, which should suffice for most use cases. If you prefer to use a different SQL database server, such as MariaDB, you’ll need to set it up manually as it's not included in the project.

## Running

To deploy the project, build it with:

```bash
docker compose up -d --build
```

It’s important to include the `--build` flag whenever you update the project or change its configuration.

## Updating

To update the project, first stop the current instance by running:

```bash
docker compose down
```

Then, update the project files with:

```bash
git pull
```

Finally, redeploy with:

```bash
docker compose up -d --build
```
