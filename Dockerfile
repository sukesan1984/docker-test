FROM jupyter/base-notebook

LABEL maintainer "Sukesan1984"

ENV CONDA_DIR=/opt/conda \
    NB_USER=jovyan

RUN conda install --quiet --yes \
    'numpy=1.13.*' \
    'scipy=0.19.*' \
    'sympy=1.1.*' \
    'matplotlib=2.1.*' \
    && conda clean -tipsy && \
    fix-permissions $CONDA_DIR

# Install Sample Notebook
COPY sample_notebook/CavityFlow_with_Navier-Stokes.ipynb /home/$NB_USER/

