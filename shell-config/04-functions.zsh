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
