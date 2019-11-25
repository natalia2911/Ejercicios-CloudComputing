FROM fedora:latest

RUN dnf install -y python3-setuptools python3-devel redhat-rpm-config
COPY holamundo.py holamundo.py

RUN python3 holamundo.py

