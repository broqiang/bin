# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🛠️  开发工具配置
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

# 🤖 Claude Code 配置
export ANTHROPIC_BASE_URL="https://api.aigocode.com/api"
export ANTHROPIC_AUTH_TOKEN="sk-4f7d652a98eaaf206306452a6bc8db4df61d20087fdf46fdb09507d7b74d9123"

# 🍎 Xcode 快捷启动（仅在 macOS 下且 Xcode 已安装时生效）
if [[ "$OSTYPE" == "darwin"* ]] && [[ -d "/Applications/Xcode.app" ]]; then
  alias xcode="open -a Xcode"
fi
