# firefly-database
PostgreSQL extension to simplify the installation of Firefly database

## Installation
Dependencies : 
```bash
WIP
```

And then :
```bash
make installcheck   # to run unit tests
make install        # to run installation (maybe a sudo will be necessary
```

## Use
In your sql script, you just have to put this line to have all necessary tables and functions.

```sql
CREATE EXTENSION firefly;
```
