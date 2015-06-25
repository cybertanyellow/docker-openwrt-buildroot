FROM ubuntu:14.10

RUN apt-get update &&\
    apt-get install -y gcc g++ binutils patch autoconf libcurl4-openssl-dev \
                       bzip2 flex make gettext pkg-config unzip zlib1g-dev \
                       libc6-dev subversion libncurses5-dev gawk sharutils \
                       curl libxml-parser-perl python-yaml git ocaml-nox &&\
    apt-get install -y zsh vim cscope-el vim-doc zsh-doc &&\
    apt-get clean &&\
    useradd -m u96018 &&\
    echo 'u96018 ALL=NOPASSWD: ALL' > /etc/sudoers.d/u96018 &&\
    sudo -iu u96018 git clone --recursive https://github.com/cybertanyellow/oh-my-vim.git ~/.vim &&\
    sudo -iu u96018 cp ~/.vim/vimrc ~/.vimrc &&\
    sudo -iu u96018 git clone git@github.com:cybertanyellow/oh-yellow-zsh.git ~/.oh-my-zsh &&\
    sudo -iu u96018 cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc &&\
    sudo -iu u96018 chsh -s /bin/zsh
    
