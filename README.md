# user-web

リクエストをuser-appにプロキシするwebサーバー

```
asia.gcr.io/buzz-connection/user-web
```


## 設定ファイルについて
templetes/内にxxxxx.conf.templeteのようなテンプレートを設置すると、起動時に環境変数を注入してnginx.dに設置してくれる


## 環境変数の設定方法

CloudBuildでイメージをビルドする際にARGとして渡している

追加手順

1. [CloudBuild](https://console.cloud.google.com/cloud-build/triggers/edit/b420f08c-9a5f-437c-8c3d-0734e2b01cb3?project=buzz-connection&supportedpurview=project)の変数に値を追加
2. cloudbuild.yamlで受け取った変数をビルドコマンドに渡すように書き換える
3. DockerfileでARGを受け取ってENVに設定する
4. 変更をmasterにpushする
5. 新しいイメージがビルドされる

