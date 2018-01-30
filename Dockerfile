FROM celiangarcia/firefly-database-base:0.1

WORKDIR /firefly-database
COPY . .
COPY init.sql /docker-entrypoint-initdb.d/init.sql

RUN make install
