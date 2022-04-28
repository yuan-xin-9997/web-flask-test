FROM ubuntu:18.04

MAINTAINER yuan xin <yuanxin9997@qq.com>

# RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python3.7 python-pip
# RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
RUN apt-get update
RUN apt-get install -y -q python3 python3-pip
ADD ./app/requirements.txt /tmp/requirements.txt

RUN pip install -q -r /tmp/requirements.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
ADD ./app /opt/web-flask-test

WORKDIR /opt/web-flask-test
EXPOSE 8080
CMD ["python3", "example2.py"]
