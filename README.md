# Hosting VAIT music bot

## User Guide

- Clone this repo
- Copy the file `config.sample.txt` into `config.txt`
- Replace these 3 lines with your appropriate details.

```txt
token = BOT_TOKEN_HERE
owner = YOUR_USER_ID_HERE
prefix = ";;"
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
