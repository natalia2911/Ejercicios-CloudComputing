FROM centos:7

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all &&  yum install -y centos-release-scl && \
  yum install -y rh-python36 && \
  yum install -y rh-python36-python-tkinter
COPY holamundo.py holamundo.py

RUN python holamundo.py

