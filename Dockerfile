FROM apache/airflow:2.7.1

USER root
RUN apt-get update \
    && apt-get install -y python3.10  \
    && apt-get install -y libgomp1  \
    && apt-get install -y git

USER 50000
ADD requirements.txt .
RUN pip install -r requirements.txt
