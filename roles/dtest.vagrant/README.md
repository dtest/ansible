The purpose of this role is to manage local vagrant information. 

Mainly, this stems from Vagrant 1.7's new method of generating secure keys. So this play will modify your ~/.ssh/config file with appropriate output of `vagrant ssh-config $vm`
