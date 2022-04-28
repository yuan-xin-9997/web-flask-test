# -*- coding: utf-8 -*-
"""
@author: yuan_xin
@contact: yuanxin9997@qq.com
@file: example2.py
@time: 2022/4/27 22:51
@description:
"""
from flask import Flask

app = Flask(__name__)
# app.config['DEBUG'] = True  # 开启 debug，每次修改不用手动重启，开启后，可以观察控制台日志。


@app.route('/')
def hello_world():
    s = """
    <h1>泥豪，世界！</h1>
    <img src="https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2700654223,2122220372&fm=26&gp=0.jpg"> 
    <img src="https://pics2.baidu.com/feed/78310a55b319ebc4e313b5d41637d1f61e17162b.jpeg?token=99340ce9b353d872e1ea3335f872aa59">
    <img src="https://t7.baidu.com/it/u=3676218341,3686214618&fm=193&f=GIF">
    """
    return s


if __name__ == "__main__":
    # app.run(host='127.0.0.1', port=8080)
    app.run(host='0.0.0.0', port=8080)
