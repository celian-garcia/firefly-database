FROM mdillon/postgis

WORKDIR /firefly-database
COPY . .

RUN make install
