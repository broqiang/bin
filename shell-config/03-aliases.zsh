# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🔗 别名配置
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

# 📁 快速切换目录（使用 hash 方式，性能更好）
hash -d broqiang="$HOME/development/workspace/broqiang"
hash -d upup="$HOME/development/workspace/upup"
# 使用方式：cd ~broqiang 或 cd ~upup

# 传统 alias 方式（保留兼容性）
alias cdbroqiang='cd ~/development/workspace/broqiang'
alias cdupup='cd ~/development/workspace/upup'

# 📂 ls 命令增强（根据系统类型判断）
if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS 使用 BSD ls
  alias ls='ls -G'
else
  # Linux 使用 GNU ls
  alias ls='ls --color=auto'
fi
alias ll='ls -lh'
alias lla='ls -lAh'
alias la='ls -A'

# 🧠 Git 命令别名
alias gs='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gds='git diff --staged'
