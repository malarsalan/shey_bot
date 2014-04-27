shey_bot is created from ruby language.
========

Hello,
I created this bot for a class project. I had no idea what ruby language is and what it can do from and if you are where i was. My shey_bot will help you a lot. 

Here I will go step by step so you can create and possibly have fun with ruby.

=======

Step 1.

Mac on maverick already comes with ruby which you dont have any authorizition over. You can not install ruby libraries meaning gems. so, we have to get our own ruby so we can mess around with it. 

Install required Components

1 . xcode (command line tools )

Install xcode and then install command line tools or just install command line tools stand alone. open terminal and type

```html
    xcode-select --install
```

and choose install

2 . Homebrew

homebrew is awesome package manager for mac , if you used mac before its most chances that you know about that and for the newbie  its like apt-get and yum-install tool for mac

open terminal and paste :
```html
    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
```
after installation open terminal and run
```html
    brew doctor
```
Start Installation

1 . Installing mysql ( & setup path )]

i prefer mysql as my database . there are two most common ways to install mysql in your mac ,  First by using official DMG file Second by using homebrew .

download mysql using following link;
http://dev.mysql.com/downloads/mysql/

or

install using homebrew in terminal
```html
    brew install mysql
```
after installation open your .bashrc file or if you are using zsh then open .zshrc file

and  add at the end ( for DMG installation )
```html
    export PATH=$PATH:/usr/local/mysql/bin
```
for brew installation
```html
    export PATH=$PATH:$(brew --prefix mysql)/bin
```
2 . Installing  RVM

before installing rvm optionally you can install gcc49
```html
    brew tap homebrew/versions
    brew install gcc49
    brew install autoconf automake libtool libyaml readline libksba openssl
```
after installation open your .bashrc file and add
```html
    #export CC=/usr/local/bin/gcc-4.9
    #export CPP=/usr/local/bin/cpp-4.9
    #export CXX=/usr/local/bin/g++-4.9
```
they are COMMENTED out ,  UNCOMMENT that when you facing problem in installing gems ( like libv8 and therubyracer )

my .zshrc my zshrc

now its time to install rvm
```html
    \curl -L https://get.rvm.io | bash -s stable
```
after installation quite terminal and open again and type
```html
    type rvm | head -n 1
```
if installation was successful then you will get
```html
    in terminal "rvm is a function"
```

3 . Installing Ruby

after installing rvm now lets install ruby
```html
    rvm install ruby-2.0.0-p247
```
after installation restart your terminal and type
```html
    rvm use 2.0.0-p247 
    ruby -v
```
you will get

in terminal "ruby 2.0.0p247 (2013-06-27 revision 41674) [x86_64-darwin13.0.0]"

it means now ruby is installed its time to install gems

4 . Installing Rails ( and other gems )

rails is a gem and installing gem is so easy just type
```html 
    gem install rails 
    gem install mysql2
```
it will install all dependent gems as well

5 . Verifying installation

after installing gem type
```html
rails -v
```
Now you have installed independent ruby in your system :D
