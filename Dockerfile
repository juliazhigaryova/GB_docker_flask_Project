FROM python:3.7
LABEL maintainer="juliazhigaryova@yandex.ru"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8080
VOLUME /app/app/models
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]