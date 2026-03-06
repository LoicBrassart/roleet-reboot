#!/bin/bash
echo "Start deploy for prd..."
cd prd
docker compose down
docker compose pull
docker compose up -d
echo "Finished !"
