# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🚀 Zsh 配置主文件
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
#
# 📝 说明：此文件负责加载所有模块化配置
# 📂 配置目录：~/.bin/shell-config/
#
# 🔧 模块列表：
#   00-shell-core.zsh   - Shell 核心配置（补全、提示符、颜色）
#   01-env-paths.zsh    - 环境变量与路径配置
#   02-dev-tools.zsh    - 开发工具配置
#   03-aliases.zsh      - 别名定义
#   04-functions.zsh    - 自定义函数
#
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

# 配置文件目录
SHELL_CONFIG_DIR="${HOME}/.bin/shell-config"

# 检查配置目录是否存在
if [[ ! -d "$SHELL_CONFIG_DIR" ]]; then
  echo "⚠️  警告：配置目录 $SHELL_CONFIG_DIR 不存在"
  return 1
fi

# 自动加载所有 .zsh 配置文件（按文件名排序）
for config_file in "$SHELL_CONFIG_DIR"/*.zsh(N); do
  if [[ -r "$config_file" ]]; then
    source "$config_file"
  else
    echo "⚠️  警告：无法读取配置文件 $config_file"
  fi
done

# 清理变量
unset config_file SHELL_CONFIG_DIR
