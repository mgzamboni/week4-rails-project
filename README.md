# Install instructions

## Install RVM and Ruby

### Pre-requisites

You need `software-properties-common` installed in order to add `PPA` repositories.

If **not** installed, open a terminal (`Ctrl+Alt+T`) and run:

```term
sudo apt-get install software-properties-common
```

### 1. Add the PPA and install the package

Open a terminal (`Ctrl+Alt+T`) and run:

```term
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install rvm
```

Add your user to `rvm` group (`$USER` will automatically insert your username):

```term
sudo usermod -a -G rvm $USER
```    
### 2. Change your terminal window

Now, in order to always load rvm, change the Gnome Terminal to always perform a login.

At terminal window, click `Edit` > `Profile Preferences`, click on `Title and Command` tab and check `Run command as login shell`.

### 3. Reboot

A lot of changes were made (scripts that needs to be reloaded, you're now member of `rvm` group) and in order to properly get all them working, you need to reboot (in most cases a logout/login is enough, but in some Ubuntu derivatives or some terminal emulators, a shell login is not performed, so we advise to reboot).

### 4. Enable local gemsets

Now enable local gemsets. Open a terminal (`Ctrl+Alt+T`) and run:

```term
rvm user gemsets
```

### 5. Install a ruby

Now you're ready to install rubies. Open a terminal (`Ctrl+Alt+T`) and run:

```term
rvm install ruby
```

You''ll need ruby 3.1.0 to run this project. First, check your ruby version using the command:

```term
ruby -v
```

#### 5.1. Verify and set ruby version

If your version is different from the mentioned earlier, you'll need to update your ruby. To do that run the following commands:

```term
rvm install 3.1.0
rvm use 3.1.0 --default
```
### 6. Installing npm and yarn

This project uses yarn, and for that we'll need the npm package manage.
To install it, we need to execute the command:

```term
sudo apt install npm
```

After npm is installed, we need to install yarn. Run the following command:

```term
sudo npm install --global yarn
```

### 7. Installing Rails

This project will use Rails v6.1.4.4, to install it run the following command:

```term
gem install rails -v 6.1.4.4
```

### 8. Project setup

Steps to setup the project

#### 8.1. Create new Project

Create a new project in the desired directory by running the following command:

  ```term
  rails new <project_name>
  ```

#### 8.2. Setup Webpacker

Inside your project directory, run the command:

```term
rails webpacker:install
```

#### 8.3. Update all packages

To verify if all packages are up to date, run the command:

```term
yarn install --check-files
```

### 9. Start Rails Server

To start your rails server, run the command:

```term
bin/rails server
```

##

