# Python 3.12 Alpineベースイメージを使用
# FROM node:18-alpine3.19
FROM python:3.12-alpine3.19

# 必要なツールとフォントをインストール
RUN apk add --no-cache \
    nodejs \
    npm \
    chromium \
    nss \
    freetype \
    harfbuzz \
    font-noto-cjk \
    && apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/ \
    gcompat

# ロケール設定
ENV LANG=ja_JP.UTF-8 \
    LANGUAGE=ja_JP:ja \
    LC_ALL=ja_JP.UTF-8

# marp-cli をインストール
RUN npm install -g @marp-team/marp-cli@latest

# 環境変数の設定
ENV CHROME_DISABLE_GPU=1

# ワーキングディレクトリを設定
WORKDIR /workspace

# デフォルトのコマンド
CMD ["bash"]
