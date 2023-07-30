# Serverspec
## 概要
Serverspecを使用してサーバーの実行テストを行う

## テスト内容
* sample_spec.rbファイルにテスト項目を記載
  * Nginxのインストールを確認
  * 80番ポートの開放を確認
  * HTTPステータスコードが正常(200)であることを確認

## 実行結果
```
$ rake spec

Package "nginx"
  is expected to be installed

Port "80"
  is expected to be listening

Command "curl http://127.0.0.1:#{listen_port}/_plugin/head/ -o /dev/null -w "%{http_code}\n" -s"
  stdout
    is expected to match /^200$/

Finished in 0.066 seconds (files took 0.45741 seconds to load)
3 examples, 0 failures
```
