# MyBinder-compatible, terminal-only Ubuntu environment.
FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive \
    HOME=/home/binder \
    SHELL=/bin/bash

# Jupyter Server provides the authenticated Binder endpoint; the terminal
# extension is the only interface exposed as the default page.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        bash \
        ca-certificates \
        curl \
        git \
        nano \
        python3 \
        python3-pip \
        sudo \
        tini \
        vim-tiny \
    && python3 -m pip install --break-system-packages --no-cache-dir \
        jupyter-server \
        jupyter-server-terminals \
    && useradd --create-home --shell /bin/bash binder \
    && echo 'binder ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/binder \
    && chmod 0440 /etc/sudoers.d/binder \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY --chown=binder:binder . /home/binder

USER binder
WORKDIR /home/binder

EXPOSE 8888

ENTRYPOINT ["tini", "-g", "--"]
CMD ["jupyter", "server", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--ServerApp.token=", "--ServerApp.password=", "--ServerApp.default_url=/terminals/1"]
