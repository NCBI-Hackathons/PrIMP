# Copyright (c) 2018 Kenneth Brewer.

FROM jupyter/datascience-notebook:137a295ff71b

LABEL maintainer="Kenneth Brewer <kenibrewer@gmail.com>"

USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    sra-toolkit && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER ${NB_USER}
RUN conda install --quiet --yes \
    'biopython=1.72' \
    'r::r-devtools' \
    'bioconda::bioconductor-dada2=1.6.0' \
    'bioconda::bioconductor-phyloseq=1.22.3' \
    'bioconda::biom-format=2.1.6' \
    'bioconda::bioconductor-biocinstaller=1.28.0' \
    'bioconda::r-spieceasi=0.1.4'  && \
    conda clean -tipsy

COPY . ${HOME}/work

USER root
RUN fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER


