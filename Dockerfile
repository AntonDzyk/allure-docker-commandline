FROM adoptopenjdk/openjdk11:jre-11.0.11_9-alpine

ARG VERSION=2.17.2

RUN wget https://github.com/allure-framework/allure2/releases/download/${VERSION}/allure-${VERSION}.tgz \
    && tar xvf allure-${VERSION}.tgz \
    && rm allure-${VERSION}.tgz \
    && ln -s /allure-${VERSION}/bin/allure /usr/bin/allure
