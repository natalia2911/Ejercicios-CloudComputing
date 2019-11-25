FROM debian:7

COPY holamundo.py holamundo.py

RUN python holamundo.py

