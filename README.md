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
### 1. chezmoi のインストール
`brew install chezmoi`

### 2. dotfiles の適用
`chezmoi init --apply https://github.com/Taisei-rgb/dotfiles.git`

### 3. Cursor CLI ツールのインストール
Cursor を開く: Cmd + Shift + P → "Shell Command: Install 'cursor' command in PATH"

### 4. 拡張機能が自動インストールされる（run_once_スクリプトが実行される）
