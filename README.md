[ja](./README.ja.md)

# Shell.JapaneseFirstNameTsv.OneToMany.20200915092647

Create a TSV file that covers the reading and notation of Japanese names (not surnames). TSV with one-to-many readings and notations classified by gender.

# Deliverables

## "Reading" and "notation" are one-to-many

File|lines|"Reading"|"Notation"
----|-----|---------|----------
[yk_om_m.tsv][]|2106|male only|male only
[yk_om_f.tsv][]|1468|female only|female only
[yk_om_c.tsv][]|380|male and female|male and female
[yk_om_mc.tsv][]|563|male only|male and female
[yk_om_fc.tsv][]|638|female only|male and female
[yk_om_cm.tsv][]|384|male and female|male only
[yk_om_cf.tsv][]|391|male and female|female only

[yk_om_m.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/yk_om_m.tsv
[yk_om_f.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/yk_om_f.tsv
[yk_om_c.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/yk_om_c.tsv
[yk_om_mc.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/yk_om_mc.tsv
[yk_om_fc.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/yk_om_fc.tsv
[yk_om_cm.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/yk_om_cm.tsv
[yk_om_cf.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/yk_om_cf.tsv

## One-to-many "notation" and "reading"(Extract only when there are two or more "readings" for the same "notation")

File|lines|"Reading"|"Notation"
----|-----|---------|----------
[ky_om_m.tsv][]|10168|male only|male only
[ky_om_f.tsv][]|7668|female only|female only
[ky_om_c.tsv][]|299|male and female|male and female
[ky_om_mc.tsv][]|469|male only|male and female
[ky_om_fc.tsv][]|553|female only|male and female
[ky_om_cm.tsv][]|811|male and female|male only
[ky_om_cf.tsv][]|1162|male and female|female only

[ky_om_m.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/ky_om_m.tsv
[ky_om_f.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/ky_om_f.tsv
[ky_om_c.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/ky_om_c.tsv
[ky_om_mc.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/ky_om_mc.tsv
[ky_om_fc.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/ky_om_fc.tsv
[ky_om_cm.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/ky_om_cm.tsv
[ky_om_cf.tsv]:https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/master/res/o/ky_om_cf.tsv

# Input file

* [Shell.JapaneseFirstNameTsv.OneToOne.20200915080720](https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720)

The input file is a rename of the artifact of the above repository. I added the `yt_oo_` prefix to the file name. I placed it under [res/i/](https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/tree/master/res/i/).

# Requirement

* <time datetime="2020-09-15T09:26:35+0900">2020-09-15</time>
* [Raspbierry Pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 4 Model B Rev 1.2
* [Raspbian](https://ja.wikipedia.org/wiki/Raspbian) buster 10.0 2019-09-26 <small>[setup](http://ytyaru.hatenablog.com/entry/2019/12/25/222222)</small>
* bash 5.0.3(1)-release

```sh
$ uname -a
Linux raspberrypi 4.19.97-v7l+ #1294 SMP Thu Jan 30 13:21:14 GMT 2020 armv7l GNU/Linux
```

# Installation

```sh
git clone https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647
```

# Usage

```sh
cd Shell.JapaneseFirstNameTsv.OneToMany.20200915092647/src
./yk_union.sh
./ky_union.sh
```

# Note

* It takes a long time to execute: [3h 50m 21s](https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720/blob/master/src/note.md)

# Author

ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# License

This software is CC0 licensed.

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.en)

