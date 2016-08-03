FROM prodataninja/routeninja

RUN apt-get update && \
    pip install --no-cache-dir --upgrade --ignore-installed pip && \
    for module in $(/usr/local/bin/pip list --no-cache-dir --outdated |cut -f1 -d' '); do /usr/local/bin/pip install --no-cache-dir --upgrade ${module}; done && \
    /usr/local/bin/pip install --no-cache-dir --upgrade ipykernel jupyter && \
    apt-get -y autoremove && \
    apt-get clean && \
    rm -r /var/lib/apt/lists/*

WORKDIR /mnt/notebooks
EXPOSE 8888

CMD ["/bin/sh", "-c", "/usr/local/bin/jupyter-notebook --no-browser --notebook-dir=/mnt/notebooks"]
