FROM postgres:9.6

RUN apt-get update && apt-get install -y \
    wget build-essential postgresql-server-dev-9.6 \
    libpq-dev \
    libxml2-dev \
    libgeos-dev \
    libgdal-dev \
    libproj-dev \
    libprotobuf-c-dev

# Postgis installation
RUN wget http://postgis.net/stuff/postgis-2.4.4dev.tar.gz \
    && tar xvfz postgis-2.4.4dev.tar.gz \
    && cd postgis-2.4.4dev \
    && ./configure \
    && make \
    && make install

WORKDIR /firefly-database
COPY . .

RUN make install
