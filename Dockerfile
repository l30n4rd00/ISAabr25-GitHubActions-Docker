FROM alpine:3.21
RUN mkdir /var/flaskapp
WORKDIR /var/flaskapp
COPY . .
RUN apt update
RUN apt add python3-pip
RUN pip3 install flask
EXPOSE 5000
CMD ["python3", "app.py"]
