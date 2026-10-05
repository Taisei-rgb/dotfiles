#!/bin/bash
# Cursor拡張機能のインストール

echo "Installing Cursor extensions..."

# 必須の拡張機能
extensions=(
  "esbenp.prettier-vscode"
  "dbaeumer.vscode-eslint"
  "bradlc.vscode-tailwindcss"
  "ms-python.python"
  "ms-python.vscode-pylance"
  "ms-python.debugpy"
  "shopify.ruby-lsp"
  "eamodio.gitlens"
  "pkief.material-icon-theme"
  "saoudrizwan.claude-dev"
  "ms-toolsai.jupyter"
  "streetsidesoftware.code-spell-checker"
  "formulahendry.auto-rename-tag"
  "ritwickdey.liveserver"
  "oderwat.indent-rainbow"
  "dsznajder.es7-react-js-snippets"
  "shardulm94.trailing-spaces"
  "aki77.rails-db-schema"
  "bung87.vscode-gemfile"
  "karunamurti.haml"
  "vayan.haml"
  "mattn.runner"
  "kaiwood.endwise"
  "glenn2223.live-sass"
  "csstools.postcss"
  "sianglim.slim"
  "orta.vscode-jest"
  "redhat.vscode-yaml"
  "unifiedjs.vscode-mdx"
  "takumii.markdowntable"
  "biomejs.biome"
  "ms-ceintl.vscode-language-pack-ja"
)

# Cursorのコマンドラインツールのパス
CURSOR_CLI="cursor"

# cursorコマンドが存在するか確認
if ! command -v $CURSOR_CLI &> /dev/null; then
  echo "Error: 'cursor' command not found."
  echo "Please install Cursor CLI tools first."
  echo "Open Cursor and run: Shell Command: Install 'cursor' command in PATH"
  exit 1
fi

# 各拡張機能をインストール
for ext in "${extensions[@]}"; do
  echo "Installing $ext..."
  $CURSOR_CLI --install-extension "$ext" --force
done

echo "✅ All extensions installed successfully!"
