su postgres

echo "Starting PSQL"
#sudo -u postgres -c "/usr/lib/postgresql/9.3/bin/postgres -D /var/lib/postgresql/9.3/main -c config_file=/etc/postgresql/9.3/main/postgresql.conf &"
service postgresql start



echo #?
#sudo -u root -H sh -c "service postgresql status" 

#echo $(sudo service postgresql status)

while [ "$(service postgresql status)" != "9.3/main (port 5432): online" ];
do
  sleep 1
done


echo "Connecting to PSQL"
python connect.py

ps -e
