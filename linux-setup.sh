echo 'Here we go again!'

echo 'First we are going do install Tilix'
sudo apt-get install -y tilix

clear

echo 'Let`s install curl'
sudo apt-get install -y curl

clear

echo 'We are going to install zsh and oh-my-zsh'
sudo apt install -y zsh
chsh -s $(which zsh)
echo $SHELL
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

clear

echo 'Now let`s install some zsh plugins'
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

clear

echo 'Let`s install the powerlevel10k themes'
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo 'Let`s install the Fira Code font'
sudo apt install fonts-firacode

clear

echo 'Let`s install now vsode'
echo "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main" | sudo \
   tee /etc/apt/sources.list.d/vs-code.list
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo apt-get update
sudo apt-get install -y code

clear

echo 'Now with curl, let`s install nodeJS'
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

clear

echo 'After installing node, we will install NVM'
sudo apt-get update
sudo apt-get install -y build-essential libssl-dev
curl https://raw.githubusercontent.com/creationix/nvm/v0.35.3/install.sh | bash
source ~/.profile

clear

echo 'Remember to put the content of yours personal-zshrc on the .zshrc'
