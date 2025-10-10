# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🔧 自定义函数
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

# 🧠 Git 日志查看函数（增强版，支持图形化显示）
gl() {
  local count="${1:-10}"

  if command -v git &> /dev/null; then
    git log -n "$count" \
      --date=format:"%Y-%m-%d %H:%M" \
      --pretty=format:"%h | %an | %ad | %ar %n%B%n----------------------------------------------------------------"
  else
    echo "Error: git 命令未找到"
    return 1
  fi
}

# 🧠 Git 图形化日志（新增）
gll() {
  local count="${1:-20}"

  if command -v git &> /dev/null; then
    git log --graph --oneline --decorate -n "$count"
  else
    echo "Error: git 命令未找到"
    return 1
  fi
}

# 📝 Claude 会话日志记录函数
cc() {
  local logdir="${1:-$HOME/.bin/logs}"
  logdir="$(cd "$logdir" 2>/dev/null && pwd || echo "$logdir")"  # 转换为绝对路径
  local timestamp="$(date +"%Y%m%d_%H%M%S")"
  local logfile="${logdir}/claude_${timestamp}.log"

  # 检查 script 命令是否存在
  if ! command -v script &> /dev/null; then
    echo "Error: script 命令未找到"
    return 1
  fi

  # 检查 claude 命令是否存在
  if ! command -v claude &> /dev/null; then
    echo "Error: claude 命令未找到"
    return 1
  fi

  mkdir -p "$logdir"
  echo "🚀 Claude 会话开始，日志将保存到：$logfile"
  echo "使用 API: Anthropic (aigocode.com)"

  # 使用 env 命令在 script 会话中设置环境变量
  ANTHROPIC_BASE_URL="https://api.aigocode.com/api" \
  ANTHROPIC_AUTH_TOKEN="sk-4f7d652a98eaaf206306452a6bc8db4df61d20087fdf46fdb09507d7b74d9123" \
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

# 📝 Kimi Claude 会话日志记录函数
kimi_cc() {
  local logdir="${1:-$HOME/.bin/logs}"
  logdir="$(cd "$logdir" 2>/dev/null && pwd || echo "$logdir")"  # 转换为绝对路径
  local timestamp="$(date +"%Y%m%d_%H%M%S")"
  local logfile="${logdir}/claude_${timestamp}.log"

  # 检查 script 命令是否存在
  if ! command -v script &> /dev/null; then
    echo "Error: script 命令未找到"
    return 1
  fi

  # 检查 claude 命令是否存在
  if ! command -v claude &> /dev/null; then
    echo "Error: claude 命令未找到"
    return 1
  fi

  mkdir -p "$logdir"
  echo "🚀 Claude 会话开始，日志将保存到：$logfile"
  echo "使用 API: Moonshot (Kimi)"

  # 使用 env 命令在 script 会话中设置环境变量
  ANTHROPIC_BASE_URL="https://api.moonshot.cn/anthropic" \
  ANTHROPIC_AUTH_TOKEN="sk-oFGeBNmw9yOAUPPu2xzF0vq7exDVkwFLLJPkh0BKIYVLIKjg" \
  ANTHROPIC_MODEL="kimi-k2-turbo-preview" \
  ANTHROPIC_SMALL_FAST_MODEL="kimi-k2-turbo-preview" \
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
