FROM biocontainers/ilastik:1.4.1_cv1

RUN ln -sf /usr/bin/python3 /usr/local/bin/python
RUN apt-get update \
 && apt-get install -y --no-install-recommends python3-pip \
 && rm -rf /var/lib/apt/lists/* \
 && python3 -m pip install --no-cache-dir \
    "bioio==3.3.0" \
    "bioio-ome-tiff==1.4.0" \
    "matplotlib==3.11.0" \
    "numpy==2.4.6" \
    "openpyxl==3.1.5" \
    "pandas==3.0.3" \
    "plotnine==0.15.6" \
    "scikit-image==0.26.0" \
    "scikit-learn==1.9.0" \
    "seaborn==0.13.2"
