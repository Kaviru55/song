FROM nikolaik/python-nodejs:python3.9-nodejs18
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg

COPY requirements.txt /requirements.txt

RUN cd /
WORKDIR /app
COPY . .
CMD ["bash", "start"]
