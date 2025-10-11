#!/bin/bash
# 使用 CC API 启动 Claude Code

export ANTHROPIC_BASE_URL="https://api.aigocode.com/api"
export ANTHROPIC_AUTH_TOKEN="sk-4f7d652a98eaaf206306452a6bc8db4df61d20087fdf46fdb09507d7b74d9123"

echo "使用 CC API 启动 Claude Code..."
claude "$@"
