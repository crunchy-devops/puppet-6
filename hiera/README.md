# Hiera 

## Config
copie hiera.yaml et la directory data dans  production 
puppet lookup --environment production greeting
check 

## Commands
```shell
puppet lookup greeting
puppet lookup greeting --render-as json
puppet lookup greeting --explain
```
## Example
```shell
puppet apply -e "include motd"   # check if motd is installed 
puppet module install puppetlabs/motd  # install motd
puppet apply -e "include motd"  # first exec 
puppet apply -e "include motd"  # second exec
```
Fire up your browser and select forge.puppet.com  
Search for motd  
Check how to use it  
Find motd init.pp file   
/etc/puppetlabs/code/environments/production/modules/motd/manifests  
```shell
puppet lookup motd::content
puppet apply -e 'include motd'
cat /etc/motd
```