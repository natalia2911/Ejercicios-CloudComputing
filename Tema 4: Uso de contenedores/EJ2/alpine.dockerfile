FROM alpine:latest
RUN apk update \
 && apk add --no-cache python
 # No te usa las capas  que tengas almacenadas, si no que te lo hace desde el principio.

COPY holamundo.py holamundo.py

RUN python3 holamundo.py
