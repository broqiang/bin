# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🎯 Shell 核心配置
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

# ✅ 自动补全优化（使用缓存提升启动速度）
autoload -Uz compinit
# 每天只检查一次 .zcompdump 文件
if [[ -n ${HOME}/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

# 🔧 Shell 编辑模式（vi 模式）
set -o vi

# 🎨 终端颜色主题（ls 命令着色）
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
