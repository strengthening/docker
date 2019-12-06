FROM docker:dind

COPY . .
RUN make pybuild

