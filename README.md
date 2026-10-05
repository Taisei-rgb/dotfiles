# dotfiles
新しい Mac での環境構築を自動化するための `dotfiles`

Provisioned by [chezmoi](https://www.chezmoi.io/)

## 概要
最小限の管理を実現している。
- Cursor の設定 / 拡張機能
- Hyper の設定
- `.zshrc`, `.zprofile` の設定
- `.gitconfig` の設定
- Homebrew でインストールする CLI ツール / アプリケーション（`.Brewfile`）

## 新PCでのセットアップ手順
**1. Homebrew のインストール**

参照: https://brew.sh/

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

**2. chezmoi のインストール**

`brew install chezmoi`

**3. App Store へのサインイン**

Xcode などを `mas` でインストールするため、先に App Store アプリでサインインしておく。

**4. dotfiles の適用**

`chezmoi init --apply https://github.com/Taisei-rgb/dotfiles.git`

設定ファイルの配置後、run_once スクリプトが以下の順に自動で実行される。
1. `.Brewfile` のパッケージ / アプリケーションのインストール（`cursor` コマンドもここで入る）
2. Cursor 拡張機能のインストール

## その他
リポジトリ clone 時に ssh エラーが出た場合はこちらを参照: https://qiita.com/takapon21/items/13f00cb2e48d8c1cc115

Mac 初期設定の他、以下も必要:
- Homebrew で入らないアプリケーションの手動インストール: Rhythmik, Teracy
- logi options+ の設定
- Shokz のペアリング
- HHKB の Bluetooth 接続
