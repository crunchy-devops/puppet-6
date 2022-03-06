# Hiera 

## Config
copie hiera.yaml et la directory data dans env production 
puppet lookup --environment production value
copy variable-test.pp in manifests folder
puppet apply variable-test.pp
check 

## Commands
```shell
puppet lookup greeting
puppet lookup greeting --render-as json
puppet lookup greeting --explain
```
## Example
```shell
puppet apply -e "include motd"
puppet module install puppetlabs/motd
puppet apply -e "include motd"
puppet apply -e "include motd"
```
Fire up your browder and select forge.puppet.com  
Search for motd  
Check how to use it  
Find motd init.pp file   
/etc/puppetlabs/code/environments/production/modules/motd/manifests  
```shell
puppet lookup motd::content
puppet apply -e 'include motd'
cat /etc/motd
```