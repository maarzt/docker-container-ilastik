FROM biocontainers/ilastik:1.4.1_cv1

RUN ln -sf /usr/bin/python3 /usr/local/bin/python
RUN apt-get update \
 && apt-get install -y --no-install-recommends python3-pip \
 && rm -rf /var/lib/apt/lists/* \
 && python3 -m pip install --no-cache-dir tifffile ome-types
