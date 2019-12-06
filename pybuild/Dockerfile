FROM python:3.6-slim

RUN pip3 install arrow==0.15.1
RUN pip3 install PyMySQL==0.9.3
RUN pip3 install Flask==1.1.1

#RUN mkdir -p /python/src/github.com/strengthening/pyanalysis
#RUN mkdir -p /python/src/github.com/strengthening/pyghostbt

COPY --from=registry.cn-hongkong.aliyuncs.com/strengthening/pyanalysis:latest /python/src/github.com/strengthening/pyanalysis /tmp/pyanalysis
COPY --from=registry.cn-hongkong.aliyuncs.com/strengthening/pyghostbt:latest  /python/src/github.com/strengthening/pyghostbt  /tmp/pyghostbt

RUN cd /tmp/pyanalysis && python3 setup.py sdist && cd dist && pip3 install *.tar.gz
RUN cd /tmp/pyghostbt  && python3 setup.py sdist && cd dist && pip3 install *.tar.gz

RUN cd /tmp && rm pyanalysis -rf
RUN cd /tmp && rm pyghostbt -rf

