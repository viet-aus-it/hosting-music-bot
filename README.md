# Hosting VAIT music bot

## User Guide

- Clone this repo
- Copy the file `.env.sample` into `.env`
- Replace these 2 lines with your appropriate details.

```txt
BOT_TOKEN=
OWNER_ID=
```

- Build and run via docker-compose

```bash
# If you're using x86-64
docker-compose build
docker-compose up -d

# If you're using ARM32
docker-compose -f docker-compose.yml -f docker-compose.arm.yml build
docker-compose -f docker-compose.yml -f docker-compose.arm.yml up -d
```
