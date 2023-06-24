# flutter-palm-api-sample

Firebase Extensions で PaLM API を使用した Flutter アプリです。

## Zenn 記事

[Firebase Extensions + PaLM API で 要約アプリを作ってみた](https://zenn.dev/cloud_ace/articles/55963031745413)

## 技術構成

![architecture-1](/images/architecture_1.png) 

- Flutter（フロントエンド）
  - クライアントアプリとして UI を提供
  - UI に入力された内容を Firebase Firestore の text_documents コレクションにドキュメントを追加するリクエストを送る
  - Firebase Firestore から 要約結果を受け取る
- Firebase（バックエンド）
  - Extensions により Summarize Text with PaLM API をインストール
    - API インストールにより、自動的に Firestore をトリガーとした Cloud Functions 関数がデプロイされる
  - フロントエンドからのドキュメント追加リクエストにより Firestore へのドキュメント追加を行う
    - ドキュメント追加により、PaLM API 経由で要約を行う Cloud Functions 関数が実行される
  - クライアントに要約結果を送る

## フロントエンド（Flutter）アーキテクチャー

4 層のレイヤードアーキテクチャーを採用しています。

![architecture-2](/images/architecture_2.png) 
