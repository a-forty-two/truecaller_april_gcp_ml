FROM python:3
COPY . /app
WORKDIR /app
RUN apt-get update
RUN yes | apt-get install python3
RUN yes | apt-get install python3-pip
RUN yes | pip3 install -r requirements.txt
EXPOSE 5000
ENTRYPOINT [ 'python3' ]
CMD [ 'api.py' ]
