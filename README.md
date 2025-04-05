# Terraform for LocalStack

このリポジトリは、LocalStackを使用してローカル環境でAWSサービスをエミュレートし、Terraformでインフラを管理するためのテンプレートです。

## 前提条件

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [Terraform](https://www.terraform.io/downloads.html)
- [AWS CLI](https://aws.amazon.com/cli/) (オプション)

## セットアップ

1. LocalStackを起動する:

```bash
docker-compose up -d
```

2. Terraformを初期化する:

```bash
terraform init
```

3. Terraformプランを確認する:

```bash
terraform plan
```

4. リソースをデプロイする:

```bash
terraform apply
```

## リソースの確認

### AWS CLIを使用して確認

LocalStackで作成したリソースを確認するには、AWS CLIのエンドポイントをLocalStackに向ける必要があります:

```bash
# S3バケットを一覧表示
aws --endpoint-url=http://localhost:4566 s3 ls

# DynamoDBテーブルを一覧表示
aws --endpoint-url=http://localhost:4566 dynamodb list-tables
```

### LocalStackのWebインターフェースを使用

LocalStackのプロフェッショナル版を使用している場合は、以下のURLで管理UIにアクセスできます:
http://localhost:8080

## リソースの削除

作成したリソースを削除するには:

```bash
terraform destroy
```

LocalStackコンテナを停止するには:

```bash
docker-compose down
```

## プロジェクト構造

- `main.tf` - メインのTerraform設定ファイル
- `docker-compose.yml` - LocalStackを実行するためのDocker Compose設定
- `localstack-env/` - LocalStackの永続データ（gitignoreで除外）