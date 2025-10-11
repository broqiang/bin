# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🔗 别名配置
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

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

# 使用 Kimi Api 使用 claude
alias kimi-claude="$HOME/.bin/shell-config/claude-kimi.sh"
# 使用 Claude Code CLI 官方 Api 泗洪 claude
alias cc-claude="$HOME/.bin/shell-config/claude-cc.sh"
