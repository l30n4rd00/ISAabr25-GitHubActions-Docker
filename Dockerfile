FROM alpine:3.21

RUN mkdir /var/flaskapp
WORKDIR /var/flaskapp

COPY . .

RUN apk update && apk add --no-cache python3 py3-pip

RUN pip3 install --break-system-packages -r requirements.txt

EXPOSE 5000
CMD ["python3", "app.py"]
