FROM python:3.11
ENV PYTHONUNBUFFERED 1

RUN apt-get update\
    && apt-get install -y\
    gcc\
    python3-dev\
    libpq-dev\
    supervisor\
    vim\
    && apt-get -y clean\
    && rm -rf /var/lib/apt/lists/*
RUN bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"

RUN mkdir -p /src
WORKDIR /src
COPY ./python/requirements.txt /src/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt --no-cache-dir --default-timeout=1000

COPY ./python/ /python