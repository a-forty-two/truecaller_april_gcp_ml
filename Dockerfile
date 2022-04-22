FROM python:3
COPY . /app
WORKDIR /app
RUN apt-get install python3
RUN apt-get install python3-pip
RUN pip3 install -r requirements.txt
EXPOSE 5000
ENTRYPOINT [ 'python3' ]
CMD [ 'api.py' ]
