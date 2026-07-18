# MyBinder-compatible Ubuntu-based Jupyter image.
FROM quay.io/jupyter/base-notebook:latest

USER root

# Add any project-specific Ubuntu packages to this list.
RUN apt-get update && \
    apt-get install --yes --no-install-recommends \
        build-essential \
        git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER ${NB_UID}

COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/requirements.txt
RUN python -m pip install --no-cache-dir -r /tmp/requirements.txt

