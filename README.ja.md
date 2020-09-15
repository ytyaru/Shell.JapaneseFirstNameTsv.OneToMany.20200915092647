[en](./README.md)

# Shell.JapaneseFirstNameTsv.OneToMany.20200915092647

　日本人の名前（名字でなく）の読みと表記を網羅したTSVファイルを作成する。性別ごとに分類した読みと表記が1対多のTSV。

# 成果物

## 「読み」と「表記」が1対多

ファイル|行数|「読み」|「表記」
--------|----|--------|--------
[yk_om_m.tsv][]|2106|男のみ|男のみ
[yk_om_f.tsv][]|1468|女のみ|女のみ
[yk_om_c.tsv][]|380|男女共通|男女共通
[yk_om_mc.tsv][]|563|男のみ|男女共通
[yk_om_fc.tsv][]|638|女のみ|男女共通
[yk_om_cm.tsv][]|384|男女共通|男のみ
[yk_om_cf.tsv][]|391|男女共通|女のみ

[yk_om_m.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/yk_om_m.tsv
[yk_om_f.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/yk_om_f.tsv
[yk_om_c.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/yk_om_c.tsv
[yk_om_mc.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/yk_om_mc.tsv
[yk_om_fc.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/yk_om_fc.tsv
[yk_om_cm.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/yk_om_cm.tsv
[yk_om_cf.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/yk_om_cf.tsv

## 「表記」と「読み」が1対多（同じ「表記」に対して「読み」が2つ以上ある場合のみ抽出対象）

ファイル|行数|「読み」|「表記」
--------|----|--------|--------
[ky_om_m.tsv][]|10168|男のみ|男のみ
[ky_om_f.tsv][]|7668|女のみ|女のみ
[ky_om_c.tsv][]|299|男女共通|男女共通
[ky_om_mc.tsv][]|469|男のみ|男女共通
[ky_om_fc.tsv][]|553|女のみ|男女共通
[ky_om_cm.tsv][]|811|男女共通|男のみ
[ky_om_cf.tsv][]|1162|男女共通|女のみ

[ky_om_m.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/ky_om_m.tsv
[ky_om_f.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/ky_om_f.tsv
[ky_om_c.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/ky_om_c.tsv
[ky_om_mc.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/ky_om_mc.tsv
[ky_om_fc.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/ky_om_fc.tsv
[ky_om_cm.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/ky_om_cm.tsv
[ky_om_cf.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/ky_om_cf.tsv

# 入力ファイル

* [Shell.JapaneseFirstNameTsv.OneToOne.20200915080720](https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720)

　入力ファイルは上記リポジトリの成果物をリネームしたものである。ファイル名に`yt_oo_`プレフィクスを付与した。それを[res/i/](https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/tree/master/res/i/)配下へ配置した。

# 開発環境

* <time datetime="2020-09-15T09:26:35+0900">2020-09-15</time>
* [Raspbierry Pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 4 Model B Rev 1.2
* [Raspbian](https://ja.wikipedia.org/wiki/Raspbian) buster 10.0 2019-09-26 <small>[setup](http://ytyaru.hatenablog.com/entry/2019/12/25/222222)</small>
* bash 5.0.3(1)-release

```sh
$ uname -a
Linux raspberrypi 4.19.97-v7l+ #1294 SMP Thu Jan 30 13:21:14 GMT 2020 armv7l GNU/Linux
```

# インストール

```sh
git clone https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647
```

# 使い方

```sh
cd Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/src
./yk_union.sh
./ky_union.sh
```

# 注意

* 実行に時間がかかる: [3時間50分21秒](https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/blob/master/src/note.md)

# 著者

　ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# ライセンス

　このソフトウェアはCC0ライセンスである。

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)

