# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 📦 环境变量与路径配置
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

# 🎨 终端颜色配置
export TERM=xterm-256color

# 🔨 自定义 bin 目录
export PATH="$HOME/.bin:$PATH"

# ☕ Java 配置（Android Studio 内置 JDK）
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
[[ -d "$JAVA_HOME/bin" ]] && export PATH="$JAVA_HOME/bin:$PATH"

# 🐹 Go 配置
export GOPATH="$HOME/development/sdk/go"
export GOPROXY="https://goproxy.cn,direct"

# 🐦 Flutter 配置
flutter_path="$HOME/development/sdk/flutter/bin"
[[ -d "$flutter_path" ]] && export PATH="$flutter_path:$PATH"
