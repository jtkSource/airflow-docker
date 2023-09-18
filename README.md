# Airflow & ML on Docker

## Important folders

```bash
airflow-docker$ tree -L 1 .
.
├── airflow.sh
├── config
├── dags # contains the dags
├── docker-compose.yaml
├── Dockerfile # custom airflow docker image
├── docker_mlflow # docker image for mlflow
├── logs
├── mldb # mlflow db location
├── mlruns # mlflow root artifact
├── plugins # plusings for airflow
└── requirements.txt # additional python requirements to be installed with airflow

```

## Commands

To initialize the airflow db:

```bash
docker compose up airflow-init

```

To start all the services in the compose file, run the below command:

```bash
docker compose up -d

```

To shutdown and clean all data:

```bash
docker compose down --volumes --remove-orphans

```

Following services are started:

- mlflow - exposed port 6007
- postgres - exposed port 8080
- redis
- airflow-webserver
- airflow-scheduler
- airflow-worker
- airflow-cli

To get onto the airflow container:

```bash

./airflow.sh bash
[+] Creating 2/0
 ✔ Container airflow-docker-redis-1     Running                                                                                                                                          0.0s 
 ✔ Container airflow-docker-postgres-1  Running                                                                                                                                          0.0s 
airflow@105a1016e521:/opt/airflow$ 

```

To find the info on  the services installed:

```bash

./airflow.sh info
[+] Creating 2/0
 ✔ Container airflow-docker-redis-1     Running                                                                                                                                          0.0s 
 ✔ Container airflow-docker-postgres-1  Running                                                                                                                                          0.0s 

Apache Airflow
version                | 2.7.1                                                 
executor               | CeleryExecutor                                        
task_logging_handler   | airflow.utils.log.file_task_handler.FileTaskHandler   
sql_alchemy_conn       | postgresql+psycopg2://airflow:airflow@postgres/airflow
dags_folder            | /opt/airflow/dags                                     
plugins_folder         | /opt/airflow/plugins                                  
base_log_folder        | /opt/airflow/logs                                     
remote_base_log_folder |                                                       
                                                                               

System info
OS              | Linux                                                                                                                                                                       
architecture    | x86_64                                                                                                                                                                      
uname           | uname_result(system='Linux', node='260bd5dc851b', release='6.2.6-76060206-generic', version='#202303130630~1689015125~22.04~ab2190e SMP PREEMPT_DYNAMIC Mon J',             
                | machine='x86_64', processor='')                                                                                                                                             
locale          | ('en_US', 'UTF-8')                                                                                                                                                          
python_version  | 3.8.18 (default, Sep  7 2023, 13:47:34)  [GCC 10.2.1 20210110]                                                                                                              
python_location | /usr/local/bin/python                                                                                                                                                       
                                                                                                                                                                                              

Tools info
git             | NOT AVAILABLE                                                                              
ssh             | OpenSSH_8.4p1 Debian-5+deb11u1, OpenSSL 1.1.1n  15 Mar 2022                                
kubectl         | NOT AVAILABLE                                                                              
gcloud          | NOT AVAILABLE                                                                              
cloud_sql_proxy | NOT AVAILABLE                                                                              
mysql           | mysql  Ver 8.0.34 for Linux on x86_64 (MySQL Community Server - GPL)                       
sqlite3         | 3.34.1 2021-01-20 14:10:07 10e20c0b43500cfb9bbc0eaa061c57514f715d87238f4d835880cd846b9ealt1
psql            | psql (PostgreSQL) 15.4 (Debian 15.4-1.pgdg110+1)                                           
                                                                                                             

Paths info
airflow_home    | /opt/airflow                                                                                                                                                                
system_path     | /root/bin:/home/airflow/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin                                                              
python_path     | /home/airflow/.local/bin:/usr/local/lib/python38.zip:/usr/local/lib/python3.8:/usr/local/lib/python3.8/lib-dynload:/home/airflow/.local/lib/python3.8/site-packages:/usr/loc
                | al/lib/python3.8/site-packages:/opt/airflow/dags:/opt/airflow/config:/opt/airflow/plugins                                                                                   
airflow_on_path | True                                                                                                                                                                        
                                                                                                                                                                                              

Providers info
apache-airflow-providers-amazon          | 8.6.0 
apache-airflow-providers-celery          | 3.3.3 
apache-airflow-providers-cncf-kubernetes | 7.5.0 
apache-airflow-providers-common-sql      | 1.7.1 
apache-airflow-providers-daskexecutor    | 1.0.1 
apache-airflow-providers-docker          | 3.7.4 
apache-airflow-providers-elasticsearch   | 5.0.1 
apache-airflow-providers-ftp             | 3.5.1 
apache-airflow-providers-google          | 10.7.0
apache-airflow-providers-grpc            | 3.2.2 
apache-airflow-providers-hashicorp       | 3.4.2 
apache-airflow-providers-http            | 4.5.1 
apache-airflow-providers-imap            | 3.3.1 
apache-airflow-providers-microsoft-azure | 6.3.0 
apache-airflow-providers-mysql           | 5.3.0 
apache-airflow-providers-odbc            | 4.0.0 
apache-airflow-providers-openlineage     | 1.0.2 
apache-airflow-providers-postgres        | 5.6.0 
apache-airflow-providers-redis           | 3.3.1 
apache-airflow-providers-sendgrid        | 3.2.2 
apache-airflow-providers-sftp            | 4.6.0 
apache-airflow-providers-slack           | 8.0.0 
apache-airflow-providers-snowflake       | 5.0.0 
apache-airflow-providers-sqlite          | 3.4.3 
apache-airflow-providers-ssh             | 3.7.2 

```
