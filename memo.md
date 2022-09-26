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
シンタックスハイライト、補完など