#!/bin/sh
curl -o ~/mongodb.tgz https://fastdl.mongodb.org/osx/mongodb-macos-x86_64-4.2.2.tgz
tar -zxvf ~/mongodb.tgz
rm -f mongodb.tgz
mv mongodb-macos-x86_64-4.2.2 mongodb

mkdir ~/mongodb/db
mkdir ~/mongodb/logs

echo "\nexport PATH=\$PATH:\$HOME/mongodb/bin\n" >> ~/.zshrc
echo "\nalias mongod='mongod --dbpath ~/mongodb/db --logpath ~/mongodb/logs/mongo.log'" >> ~/.zshrc

source ~/.zshrc
