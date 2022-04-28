FROM ubuntu:18:04

MAINTAINER yuan xin <yuanxin9997@qq.com>

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python3.7 python-pip
ADD ./app/requirements.txt /tmp/requirements.txt

RUN pip install -q -r /tmp/requirements.txt
ADD ./app /opt/web-flask-test

WORKDIR /opt/web-flask-test
EXPOSE 8080
CMD ['python', 'example2.py']
