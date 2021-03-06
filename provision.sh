#!/bin/bash
# See also:
# * https://gorails.com/setup/ubuntu/14.04
# * https://rvm.io
# * http://www.postgresql.org/download/linux/ubuntu

localedef -v -c -i en_US -f UTF-8 en_US.UTF-8

echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

apt-get update
apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties
apt-get -y install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
apt-get -y install nodejs
apt-get -y install postgresql-9.4
apt-get install postgresql-client libpq5 libpq-dev
postgres createdb fable_dev
postgres createuser -s -d -r -e vagrant

gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable

source /usr/local/rvm/scripts/rvm
echo "source /usr/local/rvm/scripts/rvm" >> ~/.bashrc

rvm install 2.1.5
rvm use 2.1.5 --default

echo "gem: --no-ri --no-rdoc" > ~/.gemrc

gem install rails
