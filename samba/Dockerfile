FROM ubuntu:latest

RUN echo Asia/Tokyo > /etc/timezone \
    && apt update && apt install -y samba \
    && rm -rf /var/lib/apt/lists/*