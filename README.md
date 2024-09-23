# plex-server

このプロジェクトは、PlexメディアサーバーとSambaサーバーをDockerコンテナで構築するためのものです。

## プロジェクト構成
```
.
├── data/
│   └── .gitignore
├── samba/
│   ├── config/
│   │   └── smb.conf
│   ├── run/
│   │   └── entrypoint.sh
│   └── Dockerfile
├── .env
├── .gitignore
├── compose.yml
└── README.md
```

### ファイルとディレクトリの説明

- `data/`: メディアデータを格納するディレクトリ
- `samba/`: Sambaサーバーの設定と実行スクリプト
- `compose.yml`: Docker Composeの設定ファイル
- `.env`: 環境変数のデフォルト設定を定義するファイル

## 環境変数
`.env`ファイルで以下の環境変数を設定します。
- `PLEX_CLAIM`: Plexのログイントークン
- `ADVERTISE_IP`: ホストOSのIPアドレス
- `SAMBA_USER`: Sambaのユーザー名
- `SAMBA_PW`: Sambaのパスワード

## 使用方法

1. `.env`ファイルを作成し、必要な環境変数を設定します。
2. 以下のコマンドでDocker Composeを実行します。

```sh
docker compose up -d --build
```

