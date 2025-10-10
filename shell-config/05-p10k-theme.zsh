# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🎨 Powerlevel10k 主题配置
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

# Powerlevel10k instant prompt（启用即时提示符）
# 必须在配置文件的最前面，以提升启动速度
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 加载 Powerlevel10k 主题
p10k_theme_path="$HOME/.powerlevel10k/powerlevel10k.zsh-theme"
if [[ -f "$p10k_theme_path" ]]; then
  source "$p10k_theme_path"
else
  echo "⚠️  警告：Powerlevel10k 主题未找到，路径：$p10k_theme_path"
fi

# 隐藏用户名和主机名
export DEFAULT_USER="$USER"
prompt_context() {}

# 加载 Powerlevel10k 个性化配置
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 清理变量
unset p10k_theme_path
