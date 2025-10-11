#!/bin/bash
# 使用 Kimi API 启动 Claude Code

export ANTHROPIC_BASE_URL="https://api.moonshot.cn/anthropic"
export ANTHROPIC_AUTH_TOKEN="sk-oFGeBNmw9yOAUPPu2xzF0vq7exDVkwFLLJPkh0BKIYVLIKjg"
export ANTHROPIC_MODEL="kimi-k2-turbo-preview"
export ANTHROPIC_SMALL_FAST_MODEL="kimi-k2-turbo-preview"

echo "使用 Kimi API 启动 Claude Code..."
claude "$@"
