FROM python:3.7.4
ENV PYTHONUNBUFFERED 1
RUN mkdir /config
ADD /config/requirements.pip /config/
RUN pip install --upgrade pip
RUN pip install -r /config/requirements.pip
RUN mkdir /src
WORKDIR /src
