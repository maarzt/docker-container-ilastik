FROM mambaorg/micromamba:2.0.5

RUN micromamba install -y -n base -c ilastik-forge -c conda-forge \
    python \
    ilastik \
    tifffile \
    scikit-image \
    && micromamba clean --all --yes

ENV PATH=/opt/conda/bin:${PATH}

CMD ["python", "--version"]
