# ✅ 自动补全（需安装 zsh-completions）
autoload -Uz compinit
compinit

# 🔧 Shell 模式（使用 vi 编辑命令）
set -o vi

# 🎨 提示符配置（Linux 风格，显示绝对路径）
export PROMPT='%F{blue}[%~]%f $ '


# 🎨 终端颜色主题（目录蓝色、文件白色、可执行绿色）
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# 📦 路径设置（自定义 bin、Flutter、Java）
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/development/sdk/flutter/bin:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"

# 📁 快速切换目录
alias cdbroqiang='cd ~/development/workspace/broqiang'
alias cdupup='cd ~/development/workspace/upup'

# 📂 ls 命令优化
alias ls='ls --color=auto'
alias ll='ls -lh'
alias lla='ls -lAh'

# 🧠 Git 命令别名
alias gs='git status'
alias gaa='git add .'
alias ga='git add'
alias gp='git push'
alias gc='git commit -m'
alias gb='git branch'

# 🧠 Git 日志函数（支持传参）
gl() {
  count="${1:-10}"
  git log -n "$count" \
    --date=format:"%Y-%m-%d %H:%M" \
    --pretty=format:"%h | %an | %ad | %ar %n%B%n----------------------------------------------------------------"
}

# 🌐 网络代理切换
# export http_proxy=http://127.0.0.1:10987
# export https_proxy=http://127.0.0.1:10987
alias proxy='export http_proxy=http://127.0.0.1:10987; export https_proxy=http://127.0.0.1:10987'
alias unproxy='unset http_proxy https_proxy'

# 🐦 Flutter 配置（中国镜像）
# export PUB_HOSTED_URL=https://pub.flutter-io.cn
# export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
# export NO_PROXY=localhost,127.0.0.1,::1

# 🐹 Go 配置
export GOPATH=~/development/sdk/go
export GOPROXY=https://goproxy.cn,direct

# ☕ Java 配置（Android Studio 内置 JDK）
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"

# 🍎 Xcode 快捷启动
alias xcode="open -a Xcode"

# claude code 配置
export ANTHROPIC_BASE_URL="https://api.aigocode.com/api"
export ANTHROPIC_AUTH_TOKEN="sk-4f7d652a98eaaf206306452a6bc8db4df61d20087fdf46fdb09507d7b74d9123"

# Flutter iOS 调试 - 排除本地地址代理
export NO_PROXY="localhost,127.0.0.1,::1,192.168.31.140"
export no_proxy="localhost,127.0.0.1,::1,192.168.31.140"

# claude 启动后记录日志
cc_record() {
  local logdir="${1:-$HOME/.claude/logs}"
  logdir="$(cd "$logdir" && pwd)"  # 转换为绝对路径
  local timestamp="$(date +"%Y%m%d_%H%M%S")"
  local logfile="${logdir}/claude_${timestamp}.log"

  mkdir -p "$logdir"
  echo "🚀 Claude 会话开始，日志将保存到：$logfile"
  script -q "$logfile" claude

  # 会话结束后的处理
  echo ""
  echo "✅ 会话结束"
  echo -n "是否保留此日志？(y/n): "
  read -r keep_log

  if [[ "$keep_log" =~ ^[Nn]$ ]]; then
    # 用户选择不保留，删除日志
    rm -f "$logfile"
    echo "🗑️  日志已删除"
  elif [[ "$keep_log" =~ ^[Yy]$ ]]; then
    # 用户选择保留，询问是否自定义名字
    echo -n "是否自定义日志名？(直接回车跳过): "
    read -r custom_name

    if [[ -n "$custom_name" ]]; then
      # 生成日期格式 YYYYMMDD
      local date_suffix="$(date +"%Y%m%d")"
      local new_logfile="${logdir}/${custom_name}_${date_suffix}.log"

      # 重命名日志文件
      mv "$logfile" "$new_logfile"
      echo "📝 日志已重命名为：$new_logfile"
    else
      echo "📝 日志已保存为：$logfile"
    fi
  else
    # 默认保留
    echo "📝 日志已保存为：$logfile"
  fi
}
