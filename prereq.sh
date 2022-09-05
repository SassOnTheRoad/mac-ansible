# Xcode
xcode-select --install

# git repo
# get git ssh key 
git clone git@github.com:SassOnTheRoad/mac-ansible.git

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/sasson/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew analytics off

# pyenv
brew install pyenv
pyenv install 3.10.5 # <latest_python_version> (Check playbook up to date)

# Make sure pyenv's python on path (it will be after my shell settings are in place from playbook)
/Users/sasson/.pyenv/versions/3.10.5/bin/python -m venv ansible_venv
source ansible_venv/bin/activate

pip install ansible
python -m pip install --upgrade pip

# Then 
./playbooks/sass_mac.yml 


deactivate




cd mac-ansible
source ansible_venv/bin/activate

# to run
./sass_mac.yml -v
./sass_mac.yml -v -t settings
