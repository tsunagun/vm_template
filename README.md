## vm_template
===============

VagrantでVirtualBox用の仮想マシンを作成するためのテンプレート．

このリポジトリをgit cloneし，仮想マシン名を設定した後にvagrant upすると，
Ubuntu 14.04の仮想マシンを作成できる．

事前に以下の作業を行っておくこと

+ SSH接続に使用する公開鍵，秘密鍵の作成
+ VirtualBoxのインストール
+ Vagrantのインストール
+ Gitのインストール

上記の作業を実行した後，下記コマンドを参考に
仮想マシンの作成と起動を行う

``
git clone https://github.com/tsunagun/vm_template.git
cd vm_template
cat ~/.ssh/*id_rsa.pub keys/id_rsa.pub
sed -i "" -e "s/^vm_name.*/vm_name = 'vagrant_template'/" Vagrantfile
vagrant up
``

作成した仮想マシンはSSH経由で操作することになる．
vagrant upを実行したディレクトリでvagrant sshを実行すると，仮想マシンにSSHでログインできる．
また，通常のsshコマンドで接続することも可能である．

``
cd vm_template
vagrant ssh-config >> ~/.ssh/config
``
