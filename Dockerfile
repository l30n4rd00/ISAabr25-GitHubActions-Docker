FROM alpine:3.21
RUN mkdir /var/flaskapp
WORKDIR /var/flaskapp
COPY . .
RUN apk update
RUN apk add python3
RUN pip install Flask
EXPOSE 5000
CMD ["python3", "app.py"]
