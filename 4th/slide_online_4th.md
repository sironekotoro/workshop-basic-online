# Perl 入学式

## 第 4 回 配列操作/ハッシュ/サブルーチン編

---

## 諸注意

- 講義中の疑問点は Discord で質問して下さい。サポーターが適宜回答やアドバイスを行える様にスタンバイしています。

- うまくプログラムが動かない、分からない時は Discord #講義部屋 でサポーターにヘルプを要請してください。Discord のテキスト及び音声チャットにて個別にサポートします。

- <a href="https://discord.com/" target="_blank">Discord | 会話や交流が楽しめるプラットフォーム</a>

---

## 今日の流れ

- 配列の操作
- ハッシュ
- ハッシュの操作
- サブルーチン

---

# 配列の操作

---

## 配列の操作

### join, split

<ruby>**関数**<rt>かんすう</rt></ruby> とは、ある働きをもつ機能のことです。いままで変数の中身を表示してきた `print` も関数です。

配列に関係する関数を、まずは 2 つ紹介します。

- `join`

  - リストや配列の要素を連結してスカラー値にする

- `split`
  - 文字列やスカラー変数の値を分割して、リストにする

---

## 配列の操作

### join

`join` はリストや配列の要素を連結して、スカラー値にする関数です。

```perl
my @words = ( 'I', 'Love', 'Perl.' );    # 配列を作る
my $poem  = join '_', @words;            # 第1引数 _ , 第2引数 @words
print $poem . "\n";                      # I_Love_Perl.
```

- `join` が受け取る第 1 引数 (上の例では \_ アンダースコア) は、リストや配列の要素をくっつける糊のような役割を果たします。

- 第 2 引数には、対象の配列やリストを渡します。

---

## 配列の操作

### split

`split` は指定したパターンに従ってスカラー値や文字列を分割し、リストにします。

```perl
my $poem  = 'I_Love_Perl.';
my @words = split /_/, $poem;
print "@words\n";    # ('I', 'Love', 'Perl.')
```

- `split` が受け取る第 1 引数 (上の例ではアンダースコア) は、文字列を分割する区切りのような役割を果たします。

- 第 2 引数には、対象の文字列を渡します。

---

## 配列の操作

### split

- `/ /` は正規表現リテラルと呼ばれるものです。この二つのスラッシュ `/` の間 にあるもので文字列を分割します。上記の例では、アンダースコア（下線）で文字列を区切っています。

- 正規表現については次回以降で解説します。

---

## 練習問題 (join.pl)

1. `("0120", "123", "XXX")` という配列を作ってください。

2. 作成した配列を join 関数を利用して `-` で連結して表示してください。

---

## 練習問題 (split.pl)

- "There's more than one way to do it." という文字列を作り、split 関数で `" "`（半角スペース）ごとに分割して配列 `@array` に格納し、すべて出力してください。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 練習問題 (join2.pl)

`@array` の中身の数字を、半角スペース区切りの文字列として画面に表示しましょう。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my @array = (2, 8, 10, 203, 8760);
```

---

## 練習問題 (split2.pl)

変数 \$log には、カンマ区切りのデータが格納されています。各要素を配列に格納しましょう。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $log = "2020-7-10,12:30:55,GET /css-combinators/ HTTP/1.1,200,7974,http://webllica.com/feed-icon-by-html-css/,Mozilla/5.0 (Windows NT 6.0)";
```

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 配列の操作

### push, pop, unshift, shift

引き続き、配列の操作を学んでいきます。

配列やリストの用途は主に 2 つです。

- 名簿など、要素の **単純な集まり** として表現したい場合。

- ランキングなど、要素間の **順序** 関係を表現したい場合。

これらの用途においては、要素の順番の並べ替えや、要素の追加、取り出しが必要になります。

まずは追加と取り出しを学んでいきます。

---

## 配列の操作

### 要素の追加と削除

- 要素の追加

  - push
  - unshift

- 要素の取り出し
  - pop
  - shift

---

## 配列の操作

### 追加と取り出しの関係

|          | **追加** | **取り出し** |
| -------- | -------- | ------------ |
| **末尾** | push     | pop          |
| **先頭** | unshift  | shift        |

---

## 配列の操作

### push / pop

push / pop は配列の末尾の値を操作する関数です。

```perl
my @array = ( 'Alice', 'Bob' );
push @array, 'Carol';    # 末尾に要素 Carol を追加する
print "@array" . "\n";   # Alice Bob Carol

my $element = pop @array;    # 末尾の要素 Carol を取り出す
print "@array" . "\n";       # Alice Bob
print "$element" . "\n";     # Carol
```

- 配列の **末尾に要素を追加** するときには `push` を利用します。

- 配列の **末尾から要素を取り出す** ときには `pop` を利用します。

---

## 配列の操作

### 練習問題(push_pop.pl)

次のコードに `push`、`pop` 関数を使って、 `@array` の中身の順番を正しくするプログラムを書きましょう。
`$temp` 変数は、一時的にデータを仮置するために使用する変数です。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $elements = "second";
my $temp;
my @array = ( 'first', 'third' );

<<ここにコードを書く>>

print "@array\n";
```

---

## 配列の操作

### unshift / shift

unshift / shift は配列の先頭の値を操作する関数です。

```perl
my @array = ( 'Alice', 'Bob' );
unshift @array, 'Carol';    # 先頭に要素 Carol を追加する
print "@array" . "\n";      # Carol Alice Bob

my $element = shift @array; # 先頭の要素 Carol を取り出す
print "@array" . "\n";      # Alice Bob
print "$element" . "\n";    # Carol
```

- 配列の **先頭に要素を追加** するときには `unshift` を利用します。

- 配列の **末尾から要素取り出す** ときには `shift` を利用します。

---

## 配列の操作

### 練習問題(shift.pl)

次のコードに `shift`、`unshift` 関数を使って、 `@array` の中身の順番を正しくするプログラムを書きましょう。
`$temp` 変数は、一時的にデータを仮置するために使用する変数です。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $elements = "second";
my $temp;
my @array = ( 'first', 'third' );

<<ここにコードを書く>>

print "@array\n";
```

---

## 練習問題 (array_pop_shift.pl)

1. ('Alice', 'Bob', 'Carol') という配列 `@array` を作ってください。

2. 配列 `@array` から 'Carol' を取り出し、出力してください。

3. 配列 `@array` から 'Alice' を取り出し、出力してください。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 練習問題 (array_push_unshift.pl)

1. ('Alice', 'Bob', 'Carol') という配列 `@array` を作ってください。

2. 配列 `@array` の末尾に `Dave` を追加し、 ('Alice', 'Bob', 'Carol', 'Dave') という配列を作ってください。

3. 配列 `@array` の最初に `Eve` を追加し、 ('Eve', 'Alice', 'Bob', 'Carol', 'Dave') という配列を作ってください。

4. 配列を for 文で出力してみましょう。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 配列の操作

### reverse

reverse はリストを逆順に並べ替えて、そのリストを返す関数です。

```perl
my @lang     = ( 'perl', 'php', 'ruby', 'python', 'java', 'go');

my @reversed = reverse @lang;

print "@reversed" . "\n";    # go java python ruby php perl
```

---

## 配列の操作

### 配列の操作 reverse

連番を逆順で配列に格納したいときは、範囲演算子と組み合わせると便利です。

```perl
my @array = reverse( 1 .. 5 );

print "@array" . "\n";    # 5 4 3 2 1
```

---

## 練習問題(count_down.pl)

1. 下のプログラムに追記して、100 から 4 までカウントダウンするプログラムを作りましょう。

2. 1.で作ったプログラムに追記して(1.で使った配列を利用して)、１から 97 までカウントアップするプログラムを作りましょう。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my @array = (1 .. 100);
```

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 配列の操作

### 文字列 sort

sort は配列をルール順に並べ替えて、その配列を返します。

`sort`のみ、あるいは `sort { $a cmp $b } @array` と書くと、「文字列」として昇順に（ `a` から `z` へ）並べ替えます。

```perl
my @lang        = ( 'perl', 'php', 'ruby', 'python', 'java', 'go' );
my @sorted_lang = sort @lang;
print "@sorted_lang" . "\n";    # go java perl php python ruby

my @num        = ( 5, 200, 40, 3, 1 );
my @sorted_num = sort @num;
print "@sorted_num" . "\n";     # 1 200 3 40 5
```

---

## 配列の操作

### 数値 sort

`sort { $a <=> $b } @array` と書くと、「数値」として昇順（小さい順）に並べ替えます。

```perl
my @num = ( 5, 200, 40, 3, 1 );
my @sorted = sort { $a <=> $b } @num;

print "@sorted" . "\n";    # 1 3 5 40 200
```

変数 `$a` と `$b` は sort で使うために予約されているので、 **sort 以外で使わないようにしましょう**。

---

## 配列の操作 sort

「数値」として降順（大きい順）にソートする場合、以下の 2 つの書き方ができます。

- sort ブロック内の $a と $b を入れ替える方法

```perl
my @num = ( 5, 200, 40, 3, 1 );
my @sorted1 = sort { $b <=> $a } @num;
print "@sorted1" . "\n";    # 200, 40, 5, 3, 1
```

- sort した結果を reverse で逆順にする方法

```perl
my @num = ( 5, 200, 40, 3, 1 );
my @sorted2 = reverse sort { $a <=> $b } @num;
print "@sorted2" . "\n";    # 200, 40, 5, 3, 1
```

---

## 練習問題(sort.pl)

以下のプログラムに追記して、`@array` の中身を昇順にソートして出力しよう。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my @array = (10, 3, 21, 7, 1, 100);
```

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## （コラム）より深く学ぶには？ 勉強会への参加

日本中の Perl コミュニティが、定期的/不定期に勉強会を開催しています。

Q. 難しい内容かもしれないので不安...

A. 参加するだけなら怖くありません。参加費も無料、もしくは会場費の割勘程度です。

---

## （コラム）勉強会への参加

こんな世界もあるんだ〜、程度に聴講すると、数年後にふと繋がることもあります。

懇親会に参加して盛り上がると、さらに業界や Perl 界隈の裏話が聴けたりも！？

---

# ハッシュ

---

## ハッシュ

### ハッシュとは

ハッシュは Perl のデータ構造の 1 つで、配列と同じく要素の格納・取り出しができます。

ただし、配列と異なり **名前（key）** と **値（value）** のペアで格納されます。

このペアのことを **要素** と呼びます。

---

## ハッシュ

### ハッシュを作ってみよう

ハッシュはシジル `%` を使って定義します。

```perl
my %hash = (
    name  => 'Larry',   # 名前（key）はname, 値（value）は'Larry'
    birth => 1954,      # 名前（key）はbirth, 値（value）は 1954
);
```

---

## ハッシュ

### ハッシュを作ってみよう

名前（key）と 値（value）の間にある `=>` はファットコンマ演算子と呼ばれ、コンマと同等の役割を果たします。

```perl
my %hash = ( 'name' , 'Larry', 'birth' , 1954, );
```

このようにコンマに置き換えても動きますが、配列と見分け難くなります。ハッシュではファットコンマ演算子を使いましょう。

---

## ハッシュ

### ハッシュを作ってみよう

名前（key）は文字列として解釈されます。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
);
```

上記の例のように、名前（key）である `name` と `birth` は、シングルクォート `' '` やダブルクオート '" "' で囲む必要はありません。

---

## ハッシュ

### ハッシュを作ってみよう

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
);
```

1 つのハッシュ内の値（value）に文字列や数値が混在しても構いません。

最後の要素の末尾に `,` があってもなくても構いません。しかし、追加や変更の可能性をふまえて付けることをお勧めします。

---

## ハッシュ

### ハッシュから要素を取り出す

ハッシュの要素にアクセスし、value（値）を取り出してみましょう。

```perl
my %hash = (
    name => 'Larry',
    birth => 1954,
);
print "$hash{name}\n";    # Larry
print "$hash{birth}\n";   # 1954
```

ハッシュの value（値）を取り出すときは、配列と同様に添字を使います。

---

## ハッシュ

### ハッシュから要素を取り出す

```perl
my %hash = (
    name => 'Larry',
    birth => 1954,
);
print "$hash{name}\n";    # Larry
print "$hash{birth}\n";   # 1954
```

配列では<ruby>角括弧<rt>かくかっこ</rt></ruby> `[ ]` を使いましたが、ハッシュでは波括弧 `{ }` を使います。

波括弧 `{ }`に名前（key）を入れることで、対応する値（value）を取り出すことができます。

---

## 練習問題(nickname_hash.pl)

1. ニックネームのキー `nickname` と 身長のキー `height` の２つのキーを持つハッシュを作ろう。

2. それぞれのキーに自分のニックネーム、身長を設定しよう。

3. ハッシュの中身を画面に出力してみよう。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## ハッシュ

### ハッシュに要素を追加する

ハッシュに要素を追加してみましょう。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
);
$hash{lang} = 'Perl';    # 名前（key）が 'lang', 値（value）が 'Perl' の要素を追加
print "$hash{lang}\n";   # Perl

# name  => 'Larry',
# birth => 1954,
```

追加は取り出すときと同様に、`{key}` を使います。既に存在する名前（key）の値を代入すると、上書きされます。

---

## ハッシュ

### ハッシュの利点

配列は名前（key）で値（value）にアクセスできるため、格納順番に左右されることがありません。これは配列との大きな違いであり利点です。

配列を例に説明します。

```perl
my @user = ( 'Name', 'Job', 'lang' );
print "$user[1]\n"    # Job
```

---

## ハッシュ

### ハッシュの利点

もし突然、要素の順番が入れ替わってしまったらどうなるでしょう？

```perl
my @user = ( 'lang', 'Name', 'Job' );
print "$user[1]\n"    # Name
```

同じ添字 `[1]` でも、配列の中身が変わっているため、同じ結果にはなりません。

---

## ハッシュ

### ハッシュの利点

しかしハッシュであれば、値は添字の数値（順番）ではなく、名前（key）で対応づけられています。
このため、ハッシュ内部の要素の格納順に影響を受けません。

```perl
my %hash = (
    lang  => 'Perl',
    birth => 1954,
    name  => 'Larry',
);

print "$hash{name}\n";    # name が表示される  => "Larry"
print "$hash{birth}\n";   # birth が表示される => 1954
print "$hash{lang}\n";    # lang が表示される  => "Perl"
```

---

## 練習問題(nickname_hash2.pl)

1. 先の練習問題 `nickname.pl` で作ったハッシュに要素を追加しよう。

2. ハッシュに `favorite` というキーで、好きな何か（食べ物、スポーツ etc...）を値として追加しよう。

3. `height` の値を 10 倍した値に書き換えてみよう。

4. ハッシュの中身(3 つの要素)を画面に出力してみよう。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## ハッシュ

### ハッシュの中身を楽に全部見たい！

- 質問: ハッシュの中身を全部一度に見たい場合はどうするの？ダブルクォーテーションで囲っても、変数展開できない！

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);
print "%hash\n";   # %hash 変数名がそのまま表示される
```

---

## ハッシュ

### ハッシュの中身を楽に全部見たい！

- 回答: `Data::Dumper` モジュールを使います。モジュールについては次回以降で解説します。

```
use Data::Dumper;     # チラ見せ
print Dumper \%hash;  # ハッシュリファレンス（第4回で説明）
```

---

## 練習問題（hash_profile.pl）

1. 以下の人物のプロフィールを `%larry_profile` に格納してください。

   - 名前(name) : Larry Wall
   - 誕生(birth) : 1954
   - 言語(lang) : Perl

2. key である `name`、`birth`、`lang` を使って、それぞれの value を出力してください。

3. 時間に余裕のある人は、Larry のプロフィールを充実させましょう。

   - [ラリー・ウォール](https://ja.wikipedia.org/wiki/%E3%83%A9%E3%83%AA%E3%83%BC%E3%83%BB%E3%82%A6%E3%82%A9%E3%83%BC%E3%83%AB)

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## （コラム）検索 vs 書籍

最近は検索する(ググる)ことで解決することも多いです。

しかし、書籍を通読することで、体系だった知識を身につけることができます。

ネットの情報は玉石混交、一方で書籍の場合は情報の陳腐化があり、一長一短と言えます。

---

## （コラム）オススメの書籍

- 「<a href="https://www.oreilly.co.jp/books/4873110963/" target="_blank">プログラミング Perl</a>」(通称: ラクダ本)。プログラミング未経験の初心者にはハードルが高い。海外では第 4 版まで出版されている（https://www.oreilly.com/library/view/programming-perl-4th/9781449321451/）

- 「<a href="https://www.oreilly.co.jp/books/9784873118246/" target="_blank">初めての Perl</a>」(通称: リャマ本)。若干プログラミング初心者向け、オライリーの文体に慣れていないと多少厳しいかも。

- 「<a href="https://www.wgn.co.jp/store/dat/3227/" target="_blank">CPAN モジュールガイド</a>」CPAN モジュール（後述）のガイド本。Perl の可能性を知ることができる良書。

---

## （コラム）オススメの書籍

- 「<a href="https://booth.pm/ja/items/260345" target="_blank">雅な Perl</a>」2015 年に第 3 版刊行。同人誌、とはいえ初心者向けという意味ではかなり秀逸な解説をしています。

- 「<a href="https://gihyo.jp/book/2012/978-4-7741-5025-3" target="_blank">もっと自在にサーバを使い倒す 業務に役立つ Perl</a>」サーバーのログ加工を中心に、Perl の実用例を学べる本です。

様々な書籍がたくさんありますが、割愛します。

---

# ハッシュの操作

---

## ハッシュの操作

### keys, delete, exists

ハッシュを便利に扱うための関数について説明します。

- keys

  - ハッシュの名前（key）の集合を返す。

- delete

  - ハッシュの要素を削除する。

- exists
  - ハッシュの要素が存在するかしないかを返す。

---

## ハッシュの操作

### keys

`keys` 関数はハッシュの名前（key）を配列にして返します。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);
my @keys = keys %hash;
print "@keys\n";    # birth name lang （順不同）
```

ただし、この `keys` は名前（key）を **順不同、順番が不定** で返します。

ハッシュに書かれた順番で返ってくるとは限りません。

---

## ハッシュの操作

### 名前（key）を決まった順番で受け取る

名前（key）を同じ順番で受け取りたい場合は、 `sort` 関数を使って並び替えます。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);
my @keys = keys %hash;      # この時点では順不同
my @sorted = sort @keys;    # sort で並び替える
print "@sorted\n";            # birth lang name （常にこの順番）
```

---

## ハッシュの操作

### 名前（key）を決まった順番で受け取る

値のみを順不同で受け取る `values` 関数もありますが、Perl 入学式のカリキュラムでは使いません。

[Perl 入門ゼミ values 関数 - ハッシュのすべての値の取得](https://tutorial.perlzemi.com/blog/20100222126425.html)

---

## 練習問題(hash_keys.pl)

次のハッシュの key を全て取り出して、画面に出力してみよう。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my %users = (
    'Alice'  => 1,
    'Bob'    => 2,
    'Carol'  => 3,
    'Daiana' => 4,
);
```

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## ハッシュの操作

### delete

`delete` 関数は、指定したハッシュの名前（key）と、それに対応する値（value）を削除します。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);
delete $hash{lang};     # lang という名前（key）を指定して削除
print "$hash{lang}\n";
```

---

## ハッシュの操作

### delete

この例では、最後の行で削除した名前（key）に対応する値（value）を表示しようとしています。

このとき、しっかり「おまじない」を書いていれば、存在しないキーを print しようとしている、と警告してくれます。

---

## ハッシュの操作

### exists

`exists` 関数は、指定したハッシュの名前（key）が存在するか確認します。

```perl
my %hash = (
    name  => 'Larry',
);
if ( exists $hash{name} ) { print "exists\n" }    # exists
if ( exists $hash{foo} )  { print "exists\n" }    # 何も出てこない
```

- 名前（key）が存在すれば `1`（真）を返します。

- 名前（key）が存在しなければ `' '`(空文字、偽)を返します。

---

## 練習問題(menu.pl)

次のハッシュはカフェのメニュー一覧を表しています。

1. `icecream` のメニューを削除してみよう。

2. `icecream` のメニューが削除されていれば、"夏期メニューは終了しました"と画面に表示してみよう。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my %menu = (
    'coffee'   => 380,
    'icecream' => 200,
    'salad'    => 600,
    'cake'     => 400,
);
```

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## ハッシュの操作

### 添字には変数が利用可能

ハッシュの名前（key）は文字列が入ったスカラー変数でも指定可能です。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);
my $key = 'lang';
print $hash{$key};    # Perl
```

- `{foo}` であれば foo という文字列が名前（key）となります。

- `{$foo}` であればスカラー変数 `$foo` に代入された文字列が名前（key）となります。

---

## ハッシュの操作

### ハッシュのすべての要素を処理する

`keys` 関数は配列を返します。これを for 文と組み合わせて、ハッシュのすべての要素を処理することができます。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);

for my $key ( keys %hash ) {
    my $value = $hash{$key};
    print "$key is $value\n";
}
```

どのような結果になるでしょうか？

---

## 練習問題（menu_print.pl）

以下のハッシュをコピペして利用してください。ハッシュのデータを全て `"<<商品名>> の価格は <<金額>> 円です。"` の形式で出力してみよう。

出力する順番は商品名を ABC 順(降順)で出力しよう。また、1 品目毎に改行して見やすく出力しよう。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my %menu = (
    'coffee'   => 380,
    'tea'      => 380,
    'sandwich' => 800,
    'icecream' => 200,
    'salada'   => 600,
    'cake'     => 400,
);
```

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 練習問題（hash_func.pl）

以下のハッシュをコピペして利用してください。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);
```

1. ハッシュに以下の要素を追加してください。
   - 名前（key）: software
   - 値（value）: patch

---

## 練習問題（hash_func.pl）

以下のハッシュをコピペして利用してください。

2. `keys` 関数を使って, `%hash` の名前（key）をすべて出力してください。

3. `delete` 関数を使って, 1 で使ったハッシュから birth の要素を削除してください。

---

## 練習問題（hash_func2.pl）

１つ前の練習問題で作成した `hash_func.pl` を利用します。

`exists` 関数を使って、`name`, `birth`, `lang`, `software` の各要素が存在するか確認してください。`名前（key）`は各要素の key 名が入るものとします。

- 存在している場合は `名前（key） is exist.` と表示する。

- 存在しない場合は `名前（key） is not exist.` と表示しする。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

# サブルーチン

---

## サブルーチン

### サブルーチンとは?

プログラムの中で、意味や内容がまとまっている作業をひとかたまりにしたものを **サブルーチン** と呼びます。

Perl におけるサブルーチンは、「関数」とほぼ同義です。

---

## サブルーチン

### サブルーチンと組み込み関数

Perl には、これまで使ってきた `print` や `join` など、Perl が提供する関数(組み込み関数)が用意されています。

サブルーチンを使うことで、 `print` や `join` のように、「特定の処理を行うコード」をひとかたまりにして、 簡単に呼ぶことが出来るようになります。

---

## サブルーチン

### サブルーチンの定義

それでは、早速サブルーチンを定義していきましょう。

今回は、末尾に自動的に改行(`\n`)を付与しながら文字列を表示する `say` というサブルーチンを定義してみます。

---

## サブルーチン

### サブルーチンの定義

```perl
sub say {               # -┐
    my $str = shift @_; #  │ サブルーチン say を
    print "$str\n";     #  │ 定義しているところ
}                       # -┘
say("hello, world!"); # hello, world!
```

Perl でサブルーチンを定義する為には、以下のように書きます。

定義時に末尾に `;` は不要です。

```perl
sub サブルーチン名 { ... }
```

それでは、詳しく見て行きましょう。

---

## サブルーチン

### サブルーチンの命名規則

```perl
sub say { ... }
```

- サブルーチン名として使える文字は以下です。

  - 大文字・小文字の英数字
  - アンダースコア(`_`)

- ただし、サブルーチン名の先頭文字には以下の制限があります。
  - 英文字
  - `_`

これは変数名と同じルールです。

---

## サブルーチン

### Perl におけるサブルーチンの命名規則

```perl
sub say_hello_world { ... }

sub say_good_morning { ... }
```

複数の単語でサブルーチン名を構築する時は、このように単語間を `_` で繋げる場合が多いです。

このような `_` で単語をつなげる記法をスネークケース（snake_case）といいます。

Perl では基本的にスネークケースを推奨しています。

---

## サブルーチン

### サブルーチン命名規則クイズ

```perl
sub hoge!    { ... }

sub _hoge    { ... }

sub 123_hoge    { ... }

sub hoge_123 { ... }
```

この中で、サブルーチン名として正しいものはどれでしょうか？

---

## サブルーチン

### サブルーチン命名規則クイズの正解

```perl
sub hoge!    { ... }    # 記号 '!' はサブルーチン名に使えない

sub _hoge    { ... }

sub 123_hoge    { ... } # 先頭は 英字 or '_' のみ
                        # 数字は先頭に使えない
sub hoge_123 { ... }
```

正解は `_hoge` と `hoge_123` です。

---

## サブルーチン

### サブルーチンの呼び出し

```perl
say();
```

定義したサブルーチンは、定義したサブルーチン名の後ろに `()` を付けることで利用できます。

行末に書く場合には、 `;` が必要です。

このようにサブルーチンを利用することを「**サブルーチンの呼び出し**」といいます。

---

## サブルーチン

### サブルーチンの呼び出し

```perl
say('Hello Perl!');
```

サブルーチンに値(引数)を渡したい場合、 `()` の中に書きます。

`()` を使わずに, サブルーチン名の先頭に `&` を付けて `&say` という書き方で呼びだすこともできますが、古い書き方なので使わないようにしましょう。

---

## サブルーチン

### サブルーチンの引数

```perl
sub say {
    my $str = shift @_; # ←┐
    print "$str\n";     #  │ サブルーチンの引数 'Hello Perl' は
}                       #  │ @_ という配列に格納される
                        #  │
say('Hello Perl');      # ─┘
```

サブルーチンに与えられた引数は、 `@_` という配列に格納されます。

2 行目では、`shift` を使って、この　`@_` の先頭の要素を取得しています。

このサブルーチンを `say('hoge');` のように呼んだ場合、 `@_` の中身は`('hoge')` となり、 `$str` には `hoge` という文字列が入ります。

---

## サブルーチン

### サブルーチンの引数

```perl
sub say {
    my $str = shift;  # @_ が省略されている
    print "$str\n";
}

say('Hello Perl');    # Hello Perl
```

`@_` は、省略することができます。

その為、2 行目の `my $str = shift;` は、 `my $str = shift @_;` と同じ意味になります。

---

## サブルーチン

### サブルーチンの位置

```perl
say('Hello Perl');  # Hello Perl

sub say {
    my $str = shift;
    print "$str\n";
}
```

同じファイル内であれば、サブルーチンの位置にかかわらず `say('hoge');` として呼び出すことができます。

ファイル末尾にサブルーチンがまとまっている方が見やすい場合は、このスタイルで書きましょう。

---

## サブルーチン

### サブルーチン「add」を作る

```perl
sub add {                     # ┐
    my ($left, $right) = @_;  # │サブルーチン add の定義部
    return $left + $right;    # │
}                             # ┘

my $result = add(2, 5);       # サブルーチン add の呼び出し
print $result . "\n";   # 7
```

次に、2 つの引数を受け取り、その和を返すサブルーチン `add` を考えてみることにします。

`add` サブルーチンの定義と呼び出しは、このように書くことができます。

---

## サブルーチン

### サブルーチンに複数の引数を渡す

```perl
sub add {
    my ($left, $right) = @_;  # @_ の中に 2, 5が入る
    return $left + $right;    # ↑
}                             # │
                              # │
my $result = add(2, 5);       # ┘ add の引数 2, 5
print $result . "\n";   # 7
```

サブルーチンに複数の引数が与えられた場合(この場合は `2` と `5` )、サブルーチン側ではこのようにして受け取ることができます。

サブルーチンに複数の引数を与える時は、`( )` の中で配列のようにカンマ　`,` で区切って渡します。

---

## サブルーチン

### サブルーチン側の引数の受け取り方

```perl
sub add {
                        # @_ を省略した場合
    my $left  = shift;  # @_ の先頭から1つ取り出して変数に入れている
    my $right = shift;  # @_ の先頭から1つ取り出して変数に入れている
    return $left + $right;
}
my $result = add(2, 5);
```

```perl
sub add {
    my $left  = $_[0];  # $_[0] : @_ の最初の要素
    my $right = $_[1];  # $_[1] : @_ の次の要素
    return $left + $right;
}
my $result = add(2, 5);
```

先程の引数の受け取り方は、上記のコードと同じ意味になります。

---

## サブルーチン

### 返り値と return

```perl
sub add {
    my ($left, $right) = @_;
    return $left + $right;  # $left + $right の結果を返す
}
my $result = add(2, 5);
print $result . "\n";   # 7
```

サブルーチンは, `return` を使うことで、任意のデータを呼び出し元へ返すことができます。

サブルーチンや関数の処理結果のことを **<ruby>返り値<rt>かえりち</rt></ruby>** といいます。

この場合、 `$left + $right` の計算結果が呼び出し元へ返され、 `$result` に格納されます。

---

## サブルーチン

### 複数の return

```perl
sub is_same {
    my ( $left, $right ) = @_;
    if ( $left eq $right ) {
        print "true\n";    # $left と $right が等しければ表示
        return 1;
    }
    else {
        print "false\n";    # $left と $right が異なれば表示
        return 0;
    }
    print "YOU WILL NEVER SEE IT\n"; # 絶対に表示されない!
    return;
}
```

`return`に到達した場合、それ以降の処理は一切行われず、すぐさま値を返してサブルーチンの実行を終了します。（ガード節といいます）

---

## サブルーチン

### 複数の返り値

```perl
sub add_and_min {
    my ( $left, $right ) = @_;
    return ( $left + $right, $left - $right );
}
my ( $add, $min ) = add_and_min( 5, 4 );
```

サブルーチンは、このようにリストを返すことで複数個の値を返すこともできます。

引数がどのようにサブルーチンに渡されて処理されるか、追ってみましょう。

---

## サブルーチン

## return がない場合の返り値

```perl
sub add {
    my ($left, $right) = @_;
    $left + $right;         # サブルーチンの中で最後に評価された行
}

my $result = add(2, 5);
print $result . "\n";   # 7
```

サブルーチンの中に `return` がない場合、サブルーチンの返り値は最後に評価された処理の結果(この場合、 `$left + $right`の計算結果)を返します。

値を返すという意図を明確にするため、 `return` は書くようにしましょう。

---

## 練習問題

次のようなサブルーチンを持つコードを `simple_calc.pl` という名前で作成しよう。

- 2 つの引数の和（足し算）を計算する `add`
- 2 つの引数の差（引き算）を計算する `min`
- 2 つの引数の積（掛け算）を計算する `mul`
- 2 つの引数の商（割り算）を計算する `div`

---

## 練習問題

これらのサブルーチンが正しく実装できているか(与えた 2 つの引数に対して, 適切な値を返すか)を確認するコードも一緒に書くこと。

- 時間の余った人は「0」で割った際のエラーを回避する仕組みを入れてみよう

- さらに時間の余った人は数字以外が入力された場合に 'INPUT NUMBER PLEASE'と表示する仕組みを入れてみよう

---

## お疲れ様でした!

Perl 入学式第 4 回お疲れ様でした！

是非 Perl 入学式の Discord #雑談部屋 でサポーターや参加者の皆さんと交流しましょう。

不明点も Discord #雑談部屋 で是非質問してください。

第 5 回の参加もお待ちしております!

---

## 次回（以降）予告

- 正規表現

- リファレンス