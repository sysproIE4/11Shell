# シェル（myshell）の改良１

簡易シェル（`myshell`）に環境変数の管理機能を追加しなさい．<br>
また，動作確認をしなさい．

## 改造

1. 環境変数の編集機能<br>
  文法：`setenv 名前 値`<br>
  説明：`名前`の環境変数を新しく作り`値`をセットする．<br>
  すでに`名前`の環境変数が存在する場合は値を`値`で上書きする．<br>
  使用例：`Command: setenv LC_TIME C`

2. 環境変数の削除機能<br>
  文法：`unsetenv 名前`<br>
  説明：`名前`の環境変数を削除する．<br>
  使用例：`Command: unsetenv LC_TIME C`

3. プログラムの作成<br>
  レポジトリをクローンし`myshell.c`を編集してプログラムを完成する．<br>
  上の仕様を満たすプログラムを美しくコーディングする．<br>
  できたと思ったら十分な動作テストを行う．

4. 動作テスト<br>
  以下の実行例を参考に行う．

## 実行例

```bash
$ ./myshell
Command: printenv LC_TIME
Command: date
2020年 8月26日 水曜日 08時33分43秒 JST
Command: setenv LC_TIME C
Command: printenv LC_TIME
C
Command: date
Wed Aug 26 08:34:03 JST 2020
Command: unsetenv LC_TIME   
Command: printenv LC_TIME
Command: date
2020年 8月26日 水曜日 08時34分21秒 JST
Command:
```

## コンパイル方法

```makefile```を準備してあるので
```make```コマンドでコンパイルできる．

```bash
$ make
cc -Wall -std=c99 -o myshell myshell.c
```
