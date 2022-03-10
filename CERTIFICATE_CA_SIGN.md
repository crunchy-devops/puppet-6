# How to manage certificats
```shell
puppet resource service puppet ensure=stopped
puppet resource service puppetserver ensure=stopped
cd /etc/puppetlabs/puppetserver
rm -Rf ca 

puppet resource service puppet ensure=running
puppetserver ca setup
puppet resource service puppet ensure=stopped
puppet resource service puppet ensure=running
puppetserver ca list
# go to the node
puppetserver ca list
puppetserver ca sign -a
```

## On the node 
```shell
cd /etc/puppetlabs/puppet
puppet resource service puppet ensure=stopped
rm -Rf ssl
puppet resource service puppet ensure=running
cd ssl
ll
puppet agent -t
# run on puppetmaster 
puppetserver ca sign -a
# back to the node 
puppet agent -t
```

## Delete all certificates
### On puppet master 
```shell
puppet resource service puppet ensure=stopped
puppet resource service puppetserver ensure=stopped
rm -Rf /etc/puppetlabs/puppet/ssl
puppetserver ca setup
puppet resource service puppetserver ensure=running
puppet resource service puppet ensure=running
```

### clean up regenerate certs on Puppet agents
```shell

puppet resource service puppet ensure=stopped 
puppet config print ssldir --section agent
rm -Rf /etc/puppetlabs/puppet/ssl
puppet resource service puppet ensure=running
```

### On Puppet master 
```shell
puppetserver ca list
puppetserver ca sign --certname puppet-agent.novalocal
```

## install new node 
```shell
# on server 
echo "127.0.0.2 puppet" >> /etc/hosts
yum -y install puppetserver
/opt/puppetlabs/bin/puppet --version
puppetserver --version
which puppet
systemctl start puppetserver
systemctl enable puppetserver
# on node 
yum list puppet*
yum install -y puppet
vi /etc/hosts
puppet agent -t
find / -name puppet -print 2>/dev/null
/opt/puppetlabs/bin/puppet agent -t
# on puppetmaster
puppetserver ca list
puppetserver ca sign --certname puppetagent-std1.novalocal
# on node 
vi ~/.bash_profile
source ~/.bash_profile
puppet --version
systemctl start puppet
systemctl enable puppet
```



