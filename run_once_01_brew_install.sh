#!/usr/bin/env zsh

echo "📦 Brewfileからパッケージをインストールしています..."

# Homebrewが利用可能か確認
if ! command -v brew &> /dev/null; then
  echo "❌ エラー: Homebrewがインストールされていません。"
  echo "先にHomebrewをインストールしてください。"
  exit 1
fi

# Brewfileが存在するか確認
if [ ! -f "$HOME/.Brewfile" ]; then
  echo "❌ エラー: ホームディレクトリに.Brewfileが見つかりません。"
  exit 1
fi

# brew bundleを実行
brew bundle --global

if [ $? -eq 0 ]; then
  echo "✅ 全てのパッケージのインストールが完了しました！"
else
  echo "❌ 一部のパッケージのインストールに失敗しました。上記の出力を確認してください。"
  exit 1
fi
