# Fable Tracker

This is the code for the fable tracker. What is the fable tracker? If you don't know, then you shouldn't know.

### Vagrant
This project can be spun up using Vagrant (http://www.vagrantup.com). This is recommended for windows development, mostly because it's pretty much impossible to do rails development on windows. So, you know, install Vagrant and VirtualBox first.

### Run the Project
* Clone this repo
* Run `vagrant up` (This might take a while, especially the first time)
* Run `vagrant ssh` (Now you're on your VM's command line)
* Create a vagrant user in Postgres `sudo -u postgres createuser -s -d -r -e vagrant`
* Create a database `sudo -u postgres createdb fable_dev`
* `cd /vagrant`
* `rake db:setup`
* `rails s -b 0.0.0.0`

Now the app is running on your VM, but also accessible via http://localhost:3000 from the host machine.
