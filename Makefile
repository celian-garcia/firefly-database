EXTENSION = firefly             # the extensions name
DATA = firefly--0.2.0.sql       # script files to install
TESTS = $(wildcard test/sql/*.sql)
REGRESS = $(patsubst test/sql/%.sql,%,$(TESTS))
REGRESS_OPTS  = --inputdir=test         \
                --load-extension=postgis \
                --load-extension=firefly \
                --load-extension=pgtap \
                --load-language=plpgsql

# postgres build stuff
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
