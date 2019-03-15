##### vimscript
- 1. 执行以下脚本:
    ``` shell
    git clone git@github.com:samoyedsun/vimscript.git
    cd vimscript && sh ./install.sh
    ```
- 2. 打开vim输入:PluginInstall然后回撤

- 3. 终端高亮:
    ``` shell
    # 向.bash_profile加入以下内容
    PATH=$PATH:$HOME/bin

    export TERM="xterm-color"
    export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
    export LC_ALL=en_US.UTF-8

    export AWS_ACCESS_KEY_ID="***********************"
    export AWS_SECRET_ACCESS_KEY="*****************************"
    export AWS_DEFAULT_REGION="*************"
    export AWS_DEFAULT_OUTPUT="json"

    alias ls="ls -G"
    alias python="/usr/bin/python2.7"
    ```
- 4. kubectl环境:
    ``` shell
    sudo easy_install pip
    sudo pip install nose
    sudo pip install tornado
    sudo -H pip install awscli --ignore-installed six

    mkdir $HOME/bin
    curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.10.3/2018-07-26/bin/darwin/amd64/aws-iam-authenticator
    mv ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && chmod +x $HOME/bin/aws-iam-authenticator
    curl -o kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.10.3/2018-07-26/bin/darwin/amd64/kubectl
    cp ./kubectl $HOME/bin/kubectl && chmod +x $HOME/bin/kubectl
    ```

##### thanks
- http://vimcdoc.sourceforge.net/doc/

