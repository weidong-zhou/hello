FROM python:3.12.4-alpine3.20


#docker build . --build-arg APP_VERSION=0.1.0
ARG APP_VERSION=0.1.0
ENV APP_DIST=hello-$APP_VERSION.tar.gz

WORKDIR /app
COPY dist/$APP_DIST /app/

RUN pip3 install $APP_DIST
RUN rm $APP_DIST

CMD "python3" "-m" "hello"