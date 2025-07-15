FROM n8nio/n8n:latest

USER root

# Install postgresql client and timezone data
RUN apk add --no-cache postgresql-client tzdata

# Set timezone to Athens
ENV TZ=Europe/Athens
RUN cp /usr/share/zoneinfo/Europe/Athens /etc/localtime && \
    echo "Europe/Athens" > /etc/timezone

USER node

EXPOSE 5678
