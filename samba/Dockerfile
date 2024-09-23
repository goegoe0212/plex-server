FROM ubuntu:latest

RUN echo Asia/Tokyo > /etc/timezone \
    && apt update && apt install -y samba \
    && rm -rf /var/lib/apt/lists/*

ARG SAMBA_USER SAMBA_PW

RUN (echo $SAMBA_PW; echo $SAMBA_PW) | smbpasswd -s -a $SAMBA_USER