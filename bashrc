# Shell command vi mode
set -o vi

# Quickly switch dirctory
alias cdbroqiang='cd ~/development/workspace/broqiang'
alias cdupup='cd ~/development/workspace/upup'

# Proxy 
alias proxy='export http_proxy=http://127.0.0.1:10887;export https_proxy=http://127.0.0.1:10887'
alias unproxy='unset http_proxy https_proxy'

# git alias
alias gs='git status' 
alias gaa='git add . '
alias ga='git add ' 
alias gp='git push' 
alias gc='git commit -m ' 
alias gb='git branch'
# 因为这个需要支持传入参数,所有不使用 alias , 直接定义成一个函数 
gl() {
  count="${1:-10}"
  git log -n "$count" --reverse \
    --date=format:"%Y-%m-%d %H:%M" \
    --pretty=format:"%h | %an | %ad | %ar %n%B%n----------------------------------------------------------------"
}



# ls alias
alias ll='ls -lh'
alias lla='ls -lAh'

# custom bin 
export PATH=$PATH:~/.bin

# =============== Flutter configuration ===============
# China mirror
export PUB_HOSTED_URL=https://pub.flutter-io.cn;
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
# Path
export PATH=$PATH:$HOME/development/sdk/flutter/default/bin
export NO_PROXY=localhost,127.0.0.1,::1

# =============== Go configuration ===============
export GOPATH=~/development/workspace/go
export GOPROXY=https://goproxy.cn,direct

# Xcode
alias xcode="open -a Xcode"

# ============== Java Veriable =================
export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jbr/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

# ========= Postgresql ==========
PATH="/usr/local/opt/postgresql@17/bin:$PATH"
