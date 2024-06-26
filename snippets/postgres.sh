# initialize postgress (e.g. for docker mount)
chown 'postgres:postgres' '/var/lib/postgresql/12/main/'
su - postgres -c '/usr/lib/postgresql/12/bin/initdb /var/lib/postgresql/12/main'

# create user and db
su - postgres -c 'createuser -P <USER>'
su - postgres -c 'createdb -O <USER> <DB>'
su - postgres -c 'createdb --template=template0 --encoding=UTF8 -O <USER> <DB>'

# create superuser
CREATE ROLE <USER> LOGIN SUPERUSER PASSWORD '<PASSWORD>';
createdb -h 'localhost' -U '<USER>' --password -O '<USER>' '<DB>'
psql -h 'localhost' -U '<USER>' --password # add '-d postgres' if you haven't created a user db

# create/restore dumps
su - postgres -c 'pg_dump -f <DUMP> <DB>'
su - postgres -c 'pg_restore -d <DB> <DUMP>'
su - postgres -c 'psql -d <DB> -f <DUMP>'
