FROM alpine as downloader
WORKDIR /tmp
RUN apk --update add openssl wget && rm -rf /var/cache/apk/*
RUN wget -c https://languagetool.org/download/LanguageTool-4.6.zip && unzip LanguageTool-4.6.zip

FROM openjdk:8-alpine
WORKDIR /
COPY --from=downloader /tmp/LanguageTool-4.6 /bin/
WORKDIR /bin
EXPOSE ${PORT}
CMD java -cp languagetool-server.jar org.languagetool.server.HTTPServer --port 8081
