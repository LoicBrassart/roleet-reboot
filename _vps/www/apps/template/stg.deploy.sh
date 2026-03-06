#!/bin/bash
echo "Start deploy for stg..."
cd stg
docker compose down
docker compose pull
docker compose up -d
echo "Finished !"
