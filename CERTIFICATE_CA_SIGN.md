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



