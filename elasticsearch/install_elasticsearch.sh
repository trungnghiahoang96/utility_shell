#!/bin/sh
# https://chartio.com/resources/tutorials/how-to-install-elasticsearch-on-mac-os-x/

#################################################################
# SCRIPT HELP INSTALL elasticsearch  
#################################################################

<<COMMENT1

COMMENT1


# METHOD 1 ) : via brew 
brew update && brew install elasticsearch 

# METHOD 2 ) install manually 
# STEP 1) install Java : http://www.oracle.com/technetwork/java/javase/downloads/index.html
# STEP 2) get elasticsearch  : https://www.elastic.co/downloads/elasticsearch
# STEP 3)unzip the file and run the install script  :  tar -xvf elasticsearch-2.3.1.tar.gz 
# STEP 4) set up env variables  : nano ~/.bash_profile 
# export ES_HOME=~/apps/elasticsearch/elasticsearch-2.3.1
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_77/Contents/Home
# export PATH=$ES_HOME/bin:$JAVA_HOME/bin:$PATH


# RUN elasticsearch
elasticsearch