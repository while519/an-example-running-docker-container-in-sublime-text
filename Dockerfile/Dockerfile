# Use base image
FROM python:3

# Configure file path
RUN mkdir /root/my-project
VOLUME /root/my-project
WORKDIR /root/my-project

COPY commands.sh /root/commands.sh
RUN ["chmod", "+x", "/root/commands.sh"]
ENTRYPOINT ["/root/commands.sh"]