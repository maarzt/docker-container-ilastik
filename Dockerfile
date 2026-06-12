FROM biocontainers/ilastik:1.4.1_cv1

RUN ln -sf /usr/bin/python3 /usr/local/bin/python

# Install wget for uv installation
RUN apt-get update \
 && apt-get install -y --no-install-recommends wget \
 && rm -rf /var/lib/apt/lists/*

# Install uv using wget
RUN wget -qO- https://astral.sh/uv/install.sh | sh

# Add uv to PATH
ENV PATH="/root/.local/bin:${PATH}"

# Copy dependency metadata
COPY .python-version pyproject.toml uv.lock /app

# Disable installation of dev dependencies
ENV UV_NO_DEV=1

# Create virtual environment
WORKDIR /app
RUN uv sync --locked

# Activate the virtual environment by placing its binary directory at the front of the path:
ENV PATH="/app/.venv/bin:$PATH"
