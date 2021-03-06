FROM r-base
COPY /src /usr/local/src
RUN apt-get update -y && apt-get install libxml2-dev -y
RUN Rscript -e 'install.packages(c("XML", "pmml", "gbm"))'
RUN mkdir /usr/local/models
WORKDIR /usr/local/src
CMD ["Rscript", "model.R"]
