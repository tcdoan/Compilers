# Setup on Ubuntu

## Install packages (openjdk-6-jdk is not needed if using C++)

```
$ sudo apt-get install flex bison build-essential csh openjdk-6-jdk libxaw7-dev
$ mkdir -p ~/cool
$ cd ~/cool
$ tar -xf student-dist.tar.gz
$ echo "PATH=~/cool/bin:$PATH" >> ~/.profile
$ source ~/.profile
```
