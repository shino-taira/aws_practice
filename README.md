# Cloudformationを使ったリソース構築とサーバーテストの実行
### 概要
* Cloudformationを使用して、AWSリソースの作成からServerspecでのテスト実装。以下のツールを使用しています。
  * Cloudformation
  * Serverspec

## 各ディレクトリの内容

* [cloudformation/](https://github.com/shino-taira/aws_practice/tree/main/cloudformation) ~ Cloudformationテンプレートからスタックの作成
* [serverspec/](https://github.com/shino-taira/aws_practice/tree/main/serverspec) ~ Serverspecによるサーバーテストの実行

## 手順
* Cloudformationテンプレートをクロススタック参照構成で作成・実行してリソースを構築
  * VPC
  * IAM
  * EC2
  * ELB
  * RDS
  * S3
* SSH接続を使用してEC2と接続
* WebサーバーをNginxに設定
  * EC2にNginxをインストール
* Serverspecを使用してサーバーテストを実行し、Nginxのインストール・起動を確認
  * Serverspecをインストール
  * ファイルにテスト項目を記述
  * Serverspecテスト実行
