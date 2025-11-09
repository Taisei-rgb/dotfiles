# dotfiles
新しい Mac での環境構築を自動化するための `dotfiles`

Provisioned by [chezmoi](https://www.chezmoi.io/)

## 概要
最小限の管理を実現している。
- Cursor の設定 / 拡張機能
- Hyper の設定
- `.zshrc`, `.zprofile` の設定
- `.gitconfig` の設定

## 新PCでのセットアップ手順
**1. Homebrew のインストール**

参照: https://brew.sh/

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

**2. chezmoi のインストール**

`brew install chezmoi`

**3. dotfiles の適用**
dotfiles の適用は必要なアプリケーションのインストール等おこなった後に実行する。

`chezmoi init --apply https://github.com/Taisei-rgb/dotfiles.git`

**4. Cursor CLI ツールのインストール**

Cursor を開く: Cmd + Shift + P → "Shell Command: Install 'cursor' command in PATH"

**5. 拡張機能が自動インストールされる（run_once_スクリプトが実行される）**

## その他
リポジトリ clone 時に ssh エラーが出た場合はこちらを参照: https://qiita.com/takapon21/items/13f00cb2e48d8c1cc115

アプリケーションのインストール、Mac 初期設定の他、以下も必要:
- logi options + のインストールと設定
- Shokz のペアリング
- HHKB の Bluetooth 接続
