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
  使用例：`Command: unsetenv LC_TIME`

3. プログラムの作成<br>
  レポジトリをクローンし`myshell.c`を編集してプログラムを完成する．<br>
  上の仕様を満たすプログラムを美しくコーディングする．<br>
  できたと思ったら十分な動作テストを行う．

4. 動作テスト<br>
  以下の実行例を参考に行う．

## 実行例

```zsh
% ./myshell       
Command: printenv LC_TIME             　# 存在しない
Command: date
2023年 7月12日 水曜日 09時49分12秒 JST
Command: setenv LC_TIME C               # 作成
Command: printenv LC_TIME
C
Command: date
Wed Jul 12 09:49:24 JST 2023
Command: setenv LC_TIME ko_KR.UTF-8     # 上書き
Command: printenv LC_TIME
ko_KR.UTF-8
Command: date
2023년 7월 12일 수요일 09시 49분 42초 JST
Command: unsetenv LC_TIME               # 削除
Command: printenv LC_TIME
Command: date
2023年 7月12日 水曜日 09時50分20秒 JST
Command: 
```

## コンパイル方法

```makefile```を準備してあるので
```make```コマンドでコンパイルできる．

```bash
$ make
cc -Wall -std=c99 -o myshell myshell.c
```
