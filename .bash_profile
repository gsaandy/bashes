export DEV_HOME=~/dev
#Maven
export M2_HOME=$DEV_HOME/app/apache-maven-3.3.9
export PATH=$PATH:$M2_HOME/bin
#export MAVEN_OPTS="-Xmx756m -XX:MaxPermSize=256m -XX:+UseConcMarkSweepGC"

#Mongo
export MONGO_HOME=$DEV_HOME/app/mongodb-osx-x86_64-3.2.0
export PATH=$PATH:$MONGO_HOME/bin

#Zookeeper
export ZK_HOME=$DEV_HOME/app/zookeeper-3.4.8
export PATH=$PATH:$ZK_HOME/bin

#Java
export JAVA_HOME=$(/usr/libexec/java_home)

#ANT
export ANT_OPTS="-XX:MaxPermSize=256m -Xmx1536m"

source $DEV_HOME/.bashes/.alias.sh

#functions
change_java_version() {
    echo "Select Java Version"
    echo "==================="
    echo "6. Choose Java v6"
    echo "7. Choose Java v7"
    echo "8. Choose Java v8"
    read ver
    if [ "$ver" == "6" -o "$ver" == "7" -o "$ver" == "8" ];
    then
        export JAVA_HOME=$(/usr/libexec/java_home -v 1.$ver)
        export PATH=$JAVA_HOME/bin:$PATH
        CLASSPATH=$CLASSPATH:$JAVA_HOME/lib
        echo "Changed Java version to $ver"
    else
        echo "Invalid Java Version!!! Nothing changed..."
    fi
}
#autocompletion
if [ -f $DEV_HOME/.bashes/.git-completion.bash ]; then
  . $DEV_HOME/.bashes/.git-completion.bash
fi
if [ -f $DEV_HOME/.bashes/.git-prompt.sh ]; then
  . $DEV_HOME/.bashes/.git-prompt.sh
fi

export PS1="\u@\h :\[\e[0;34m\]\w\[\033[32m\]$(__git_ps1)\[\033[00m\] $ "
export PS1="\u@\h \[\e[0;34m\]\w\[\033[32m\]\$(__git_ps1)\[\033[00m\] $ "

export PATH="/usr/local/sbin:$PATH"

if [ -f $DEV_HOME/.bashes/.maven-completion.bash ]; then
  . $DEV_HOME/.bashes/.maven-completion.bash
fi

alias start_mongo='mongod -dbpath $DEV_HOME/mongo-data --rest'
alias down_ethnet='sudo ifconfig en1 down'
alias flush_route='sudo route flush'
alias up_ethnet='sudo ifconfig en1 up'
alias zoo_keeper='zkServer.sh'
alias start_zk_ui='nohup java -jar $DEV_HOME/github/zkui/target/zkui-2.0-SNAPSHOT-jar-with-dependencies.jar &'

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
