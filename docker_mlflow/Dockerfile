FROM python:3.10.11
# Install app dependencies
LABEL maintainer="Jubin Kuriakose"

WORKDIR /opt/
ADD docker_mlflow/requirements.txt .
RUN pip install -r requirements.txt  \
    && mkdir -p /opt/mlflow/mlruns && mkdir -p /opt/mlflow/mldb  \
    && chmod uog+rw -R /opt
ENV BACKEND_URI sqlite:////opt/mlflow/mldb/lead_scoring_model_experimentation.db
ENV ARTIFACT_ROOT /opt/mlflow/mlruns
EXPOSE 6007
CMD mlflow server --backend-store-uri ${BACKEND_URI} --default-artifact-root ${ARTIFACT_ROOT} --host 0.0.0.0 --port 6007
