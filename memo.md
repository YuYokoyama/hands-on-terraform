# メモ

**▶︎ Terraformとは？**

HashiCorp社によって作られたマルチクラウド対応のIaC

**▶︎ Terraformを使った大まかな開発の流れは？**

1. クラウドにおけるterraform用のアカウントを手作業で作成
2. Terraformにてコード記述
3. Terraformが対応できていない最新のリソース、コード化しづらい部分を手作業で微修正

**▶︎ tfenvとは？**

Terraformのバージョン管理ツール

**▶︎ tfenv install**

```bash
$ git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv
$ echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bash_profile
```

**▶︎ Terraform install**

```bash
# バージョンは.terraform-versionの記載内容のものが引数として補完される
$ tfenv install
$ tfenv use
```

**▶︎ VSCode拡張**

[HashiCorp Terraform](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform)

**▶︎ tfstate**

terraformを使って構築したクラウドの状態を記録

**▶︎ tfvars**

variableブロックで宣言した変数の値の定義
`terraform.tfvars`という固定のファイル名で自動で読み込んでくれる
ファイル名を変更する場合はコマンドラインから --var-file={ファイル名} で指定

**▶︎ HCL2**

HashiCorp Language2の略
.tfファイルを書く際に使われる独自構文
[Document](https://www.terraform.io/language)

**▶︎ アドレス**

リソースを参照するときの
<BLOCK_TYPE>.<LABEL_1>.<LABEL_2>.. で表現されるリソースパス
resourceブロックの時は省略される

**▶︎ 組み込み関数**
[Document](https://www.terraform.io/language/functions)

