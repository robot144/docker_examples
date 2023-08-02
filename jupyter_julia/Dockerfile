FROM docker.io/jupyter/julia-notebook
# see https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html for a list of available images

# Install Python packages from requirements.txt
COPY ./work/requirements.txt /home/jovyan/work/requirements.txt
RUN python -m pip install --no-cache -r /home/jovyan/work/requirements.txt

# Add julia packages
COPY ./work/install_packages.jl /home/jovyan/work/install_packages.jl
RUN /usr/local/bin/julia /home/jovyan/work/install_packages.jl