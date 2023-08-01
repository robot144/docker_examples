FROM docker.io/jupyter/scipy-notebook
# see https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html for a list of available images
# eg:
# base-notebook
# scipy-notebook
# tensorflow-notebook

# Install Python packages from requirements.txt
COPY ./work/requirements.txt /home/jovyan/requirements.txt
RUN python -m pip install --no-cache -r /home/jovyan/requirements.txt

RUN mkdir -p /home/jovyan/work

