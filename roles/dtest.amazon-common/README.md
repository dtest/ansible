# Description

This role is meant to setup proper .boto file on the local system. Currently it won't be ensuring boto installation, only that a ~/.aws/credentials file exists.

It will symlink the ~/.aws/credentials file based on passed in 'profile'

# Running

To run, we have to create the ec2.py and ec2.ini files. Since we don't have an inventory file because we're relying on ec2.py for this, we pass 'localhost,'. The trailing comma is necessary at least in ansible 1.8.4

```
ansible-playbook -i "localhost," ansible/playbooks/launch_ec2.yml
```

# Dependencies

Requires boto verson >=2.24.0

# BOTO Profiles

The plan is to eventually support multiple profiles, starting with boto 2.24 version and improving in 2.29. http://blogs.aws.amazon.com/security/post/Tx3D6U6WSFGOK2H/A-New-and-Standardized-Way-to-Manage-Credentials-in-the-AWS-SDKs

However at the time of the role creation, this was not available in ec2.py. See google discussion: https://groups.google.com/forum/#!searchin/ansible-project/ec2.py$20multiple$20credentials/ansible-project/vk9ovyR3fRM/QFYAQUTdhSsJ

