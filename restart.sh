docker compose down --volumes --remove-orphans 
docker compose up airflow-init
docker compose up -d
