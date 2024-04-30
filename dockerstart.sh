#!/bin/bash
docker compose up -d;
sleep 15;
bash init-configsrv.sh;
sleep 5;
bash init-shard.sh;
sleep 20;
bash init-router.sh;
