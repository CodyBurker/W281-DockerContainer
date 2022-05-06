FROM jupyter/datascience-notebook:latest
COPY requirements.txt /home/jovyan/requirements.txt
RUN python3 -m pip install -r /home/jovyan/requirements.txt
RUN pip install --upgrade  jupyterlab jupyterlab-git
ENV JUPYTER_ENABLE_LAB='yes'
ENV JUPYTER_TOKEN='password'