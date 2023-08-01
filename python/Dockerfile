FROM jupyter/scipy-notebook:latest

# Install Python packages
RUN mamba install -c conda-forge leafmap geopandas localtileserver osmnx -y && \
    pip install -U leafmap solara && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

COPY app.py app.py

ENV PROJ_LIB='/opt/conda/share/proj'

USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

EXPOSE 8765

CMD ["solara", "run", "app.py", "--host=0.0.0.0"]