#!/usr/bin/env perl
use strict;
use warnings;

# 1 から 100 まで順番に画面に出力するプログラムを書きましょう。
# 2.で作ったプログラムを改良し、3 の倍数の数字の時だけ、数字と一緒に"3 の倍数"と出力してみましょう。

for my $num ( 1 .. 100 ) {

    if ( $num % 3 == 0 ) {
        print $num . " 3の倍数\n";
    }
    else {
        print $num . "\n";
    }

}

# 1
# 2
# 3 3の倍数
# 4
# 5
# 6 3の倍数
# 7
# 8
# 9 3の倍数
# 10
# 11
# 12 3の倍数
# 13
# 14
# 15 3の倍数
# 16
# 17
# 18 3の倍数
# 19
# 20
# 21 3の倍数
# 22
# 23
# 24 3の倍数
# 25
# 26
# 27 3の倍数
# 28
# 29
# 30 3の倍数
# 31
# 32
# 33 3の倍数
# 34
# 35
# 36 3の倍数
# 37
# 38
# 39 3の倍数
# 40
# 41
# 42 3の倍数
# 43
# 44
# 45 3の倍数
# 46
# 47
# 48 3の倍数
# 49
# 50
# 51 3の倍数
# 52
# 53
# 54 3の倍数
# 55
# 56
# 57 3の倍数
# 58
# 59
# 60 3の倍数
# 61
# 62
# 63 3の倍数
# 64
# 65
# 66 3の倍数
# 67
# 68
# 69 3の倍数
# 70
# 71
# 72 3の倍数
# 73
# 74
# 75 3の倍数
# 76
# 77
# 78 3の倍数
# 79
# 80
# 81 3の倍数
# 82
# 83
# 84 3の倍数
# 85
# 86
# 87 3の倍数
# 88
# 89
# 90 3の倍数
# 91
# 92
# 93 3の倍数
# 94
# 95
# 96 3の倍数
# 97
# 98
# 99 3の倍数
# 100
