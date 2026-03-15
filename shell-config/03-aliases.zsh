# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🔗 别名配置
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

# 传统 alias 方式（保留兼容性）
alias cdbroqiang='cd ~/development/workspace/broqiang'
alias cdupupjz='cd ~/development/workspace/upupjz'

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
alias kimi-claude='$HOME/.bin/shell-config/claude-kimi.sh'
# 使用 AIGo 提供的Claude Code CLI Api 使用 claude
alias aigo-claude='$HOME/.bin/shell-config/aigo-claude.sh'
alias aigo-haiku='aigo-claude --model haiku'
# 使用 Code Router 提供的Claude Code CLI Api 使用 claude
alias coderouter-claude='$HOME/.bin/shell-config/claude-coderouter.sh'

# codex review 代码
alias codexreview="codex 'review 当前项目未提交的代码，并且用中文回复'"
