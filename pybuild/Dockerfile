FROM python:3.6-alpine

RUN apk add --no-cache curl
RUN apk add --no-cache ca-certificates
RUN apk add --no-cache libc6-compat
RUN apk add --update tzdata
RUN apk add --update gcc make g++ zlib-dev
RUN update-ca-certificates

COPY ta-lib-0.4.0-src.tar.gz .
RUN tar -zxvf ta-lib-0.4.0-src.tar.gz && cd ta-lib && ./configure --prefix=/usr && make && make install

RUN pip3 install numpy==1.17.4
RUN pip3 install TA-Lib==0.4.17
RUN pip3 install arrow==0.15.1
RUN pip3 install PyMySQL==0.9.3
RUN pip3 install Flask==1.1.1
RUN pip3 install python-dotenv==0.10.1
RUN pip3 install jsonschema==3.0.2 

COPY --from=registry.cn-hongkong.aliyuncs.com/strengthening/pyanalysis:latest /python/src/github.com/strengthening/pyanalysis /tmp/pyanalysis
COPY --from=registry.cn-hongkong.aliyuncs.com/strengthening/pyghostbt:latest  /python/src/github.com/strengthening/pyghostbt  /tmp/pyghostbt

RUN cd /tmp/pyanalysis && python3 setup.py sdist && cd dist && pip3 install *.tar.gz
RUN cd /tmp/pyghostbt  && python3 setup.py sdist && cd dist && pip3 install *.tar.gz

RUN cd /tmp && rm pyanalysis -rf
RUN cd /tmp && rm pyghostbt -rf

