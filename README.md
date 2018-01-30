| Quality | Build & deploy | License |
| :------ | :------------- | :------ |
| [![Codacy Badge](https://api.codacy.com/project/badge/Grade/1aca67fa542644be89da1351fc625f57)](https://www.codacy.com/app/celiangarcia/firefly-database?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=celian-garcia/firefly-database&amp;utm_campaign=Badge_Grade) | [![CircleCI](https://circleci.com/gh/celian-garcia/firefly-database.svg?style=svg)](https://circleci.com/gh/celian-garcia/firefly-database) | [![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) |

# firefly-database
PostgreSQL extension to simplify the installation of Firefly database.

## Installation
```bash
# Install postgresql
sudo apt-get install postgresql-9.6 postgresql-server-dev-9.6 gem

# Install firefly database extension
sudo make install
```

## Check installation

```bash
ll /usr/share/postgresql/9.6/extension/firefly*
-rw-r--r-- 1 root root 6529 janv. 28 14:49 /usr/share/postgresql/9.6/extension/firefly--0.0.1.sql
-rw-r--r-- 1 root root  163 janv. 28 14:49 /usr/share/postgresql/9.6/extension/firefly.control
```

## Run tests
```bash
# Install pgtap
git clone git@github.com:theory/pgtap.git
cd pgtap
sudo make install

# Into firefly-database folder : Run unit tests with postgres user
sudo chown -R postgres `pwd`
sudo -u postgres make installcheck  
```

## Use
In your sql script, you just have to put this line to have all necessary tables and functions.

```sql
CREATE EXTENSION firefly;
```
