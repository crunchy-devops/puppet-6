# Postgresql 
```shell
dnf module list postgresql
sudo dnf module enable postgresql:13
sudo dnf install postgresql-server
sudo postgresql-setup --initdb
find / -name pg_hba.conf -print 2>/dev/null
sudo systemctl start postgresql
sudo systemctl enable postgresql
sudo systemctl status postgresql
ss -ntlp
```
