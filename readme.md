Linode Tools
============

A series of tools to help with administering a Linode instance

Before you start
----------------

You need to create a config.rb file containing the following globals:

* API_KEY: your private Linode api key
* LINODE_IP: the IP of the Linode instance you are administering (for DNS config)
* ADMIN_EMAIL: Your administrator email address (for DNS config)

You also need to move the "base" file into your sites-available folder for your chosen webserver

requirements
------------

* Ruby
* Linode gem (gem install linode)

I also use nginx, which is what the base config file is based off of. If you use a different server, you'll need to change the base file.
