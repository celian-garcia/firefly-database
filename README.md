# firefly-database
PostgreSQL extension to simplify the installation of Firefly database

## Installation
Dependencies : 
```bash
# Install postgresql
sudo apt-get install postgresql-9.6 postgresql-server-dev-9.6

# Install pgtap
git clone git@github.com:theory/pgtap.git
cd pgtap
sudo make install
```

And then :
```bash
cd firefly-database

# Install firefly database extension
sudo make install

# Run unit tests with postgres user
sudo chown -R postgres `pwd`
sudo -u postgres make installcheck  
```

## Check installation

```bash
ll /usr/share/postgresql/9.6/extension/firefly*
-rw-r--r-- 1 root root 6529 janv. 28 14:49 /usr/share/postgresql/9.6/extension/firefly--0.0.1.sql
-rw-r--r-- 1 root root  163 janv. 28 14:49 /usr/share/postgresql/9.6/extension/firefly.control
```

## Use
In your sql script, you just have to put this line to have all necessary tables and functions.

```sql
CREATE EXTENSION firefly;
```
