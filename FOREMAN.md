# Foreman
## pre-requiste
```shell
curl 'http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/centos-gpg-keys-8-3.el8.noarch.rpm' --output key.rpm
sudo rpm -i key.rpm 
sudo dnf -y --disablerepo '*' --enablerepo=extras swap centos-linux-repos centos-stream-repos
sudo yum -y update
sudo rpm -Uvh https://yum.puppet.com/puppet6-release-el-8.noarch.rpm # install puppet repo package
yum list puppet* 
sudo yum install -y puppet
```



## Install foreman
```shell
sudo -s
yum install -y wget
yum install -y  https://yum.theforeman.org/releases/latest/el8/x86_64/foreman-release.rpm
yum -y install foreman-installer
ip addr
# set /etc/hosts  address ip to dns
foreman-installer
```