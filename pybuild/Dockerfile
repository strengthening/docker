FROM python:3.9-buster

COPY ta-lib-0.4.0-src.tar.gz .
RUN tar -zxvf ta-lib-0.4.0-src.tar.gz && cd ta-lib && ./configure --prefix=/usr -q && make --quiet && make install --quiet

RUN pip3 install numpy==1.17.4
RUN pip3 install TA-Lib==0.4.17
RUN pip3 install arrow==0.17.0
RUN pip3 install PyMySQL==0.9.3
RUN pip3 install Werkzeug==2.2.2
RUN pip3 install Flask==2.0.3
RUN pip3 install gevent==21.12.0
RUN pip3 install python-dotenv==0.10.1
RUN pip3 install jsonschema==3.0.2
RUN pip3 install schedule==0.6.0
RUN pip3 install pandas==1.2.1
RUN pip3 install confluent-kafka==1.7.0

COPY --from=registry.cn-hongkong.aliyuncs.com/strengthening/pyanalysis:latest /python/src/github.com/strengthening/pyanalysis /tmp/pyanalysis
COPY --from=registry.cn-hongkong.aliyuncs.com/strengthening/pyghostbt:latest  /python/src/github.com/strengthening/pyghostbt  /tmp/pyghostbt

RUN cd /tmp/pyanalysis && python3 setup.py sdist && cd dist && pip3 install *.tar.gz
RUN cd /tmp/pyghostbt  && python3 setup.py sdist && cd dist && pip3 install *.tar.gz

RUN cd /tmp && rm pyanalysis -rf
RUN cd /tmp && rm pyghostbt -rf

