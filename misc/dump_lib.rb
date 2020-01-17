#!/usr/local/bin/ruby
# -*- coding: utf-8 -*

require 'japanize'

要求 'optparse'
要求 'warning'
要求 'yaml'

日本語の別名が未定義 = 偽値
選択肢 = OptionParser.新規
選択肢.on('--not-defined-ja', '日本語の別名が未定義の操作だけを抽出') {
  日本語の別名が未定義 = 真値
}
選択肢.parse!

組の表   = {}
部の表   = {}
例外の表 = {}

名前の付いた組や部に一致する正規表現 = /\A [A-Z]/x
組み込みではない組や部に一致する正規表現の一覧 = [
  'Anytick',
  'Bundler',
  'CGI',
  'Delegator',
  'DidYouMean',
  'Etc',
  'Forwardable',
  'Gem',
  'JA',
  'Monitor',
  'MonitorMixin',
  'OptionParser',
  'Pathname',
  'Psych',
  'RbConfig',
  'Readline',
  'Set',
  'SimpleDelegator',
  'SingleForwardable',
  'SortedSet',
  'StringIO',
  'StringScanner',
  'TSort',
  'URI',
].対応させる{|ある文字列| 正規表現.翻訳("\\A #{ある文字列} \\b", 正規表現::空白を無視) }

物の空間.物毎に.繰り返す{|制御, ある物|
  もし条件が{ ある物.一種か? 部                                   }.でなければ{ 制御.次へ進む }.である
  もし条件が{ ある物.名前 =~ 名前の付いた組や部に一致する正規表現 }.でなければ{ 制御.次へ進む }.である
  もし条件が{
    組み込みではない組や部に一致する正規表現の一覧.何れかが成り立つか?{|ある正規表現| ある物.名前 =~ ある正規表現 }
  }.であるなら{
    制御.次へ進む
  }

  もし条件が{ ある物.一種か? 組 }.であるなら{
    もし条件が{ ある物 <= 例外 }.であるなら{
      例外の表[ある物] = 真値
    }.でなければ{
      組の表[ある物] = 真値
    }.である
  }.でなければ{
    部の表[ある物] = 真値
  }.である
}

日本語の名前に一致する正規表現 = /[^$@_A-Za-z0-9!?]/
組み込みではない操作に一致する正規表現の一覧 = (
  %w[
    yaml
    gem
  ].対応させる{|名前| "(?:\\b|_) #{名前} (?:\\b|_)" } +
  %w[
    pathconf
    to_set
    URI
  ].対応させる{|名前| "\\A #{名前} \\z" }
).対応させる{|ある文字列| 正規表現.翻訳(ある文字列, 正規表現::空白を無視) }
物で定義済みの操作の表 = [
  :eql?,
  :hash,
  :clone,
  :dup,
  :inspect,
  :to_s
].対応させる{|名前| [ 名前, 真値 ] }.連想配列に変換

組と操作の名前の表   = {}
部と操作の名前の表   = {}
例外と操作の名前の表 = {}

定義(:日本語の別名を持つ操作を除外) {|名前空間, 操作の一覧, 区切り|
  日本語の別名の一覧 = 操作の一覧.検索(日本語の名前に一致する正規表現).対応させる{|名前|
    この値が{
      区切り
    }.もし{ '.' }.であるなら{
      名前空間.操作を取得(名前)
    }.もし{ '#' }.であるなら{
      名前空間.生成物が持つ操作を取得(名前)
    }.でなければ{
      例外を発生 "不正な区切り: #{区切り}"
    }.である
  }.除く{|ある操作|
    ある操作.名前 == ある操作.元の名前 || ある操作.元の名前 =~ 日本語の名前に一致する正規表現
  }

  日本語の別名を持つ操作の表 = 日本語の別名の一覧.
                                 対応させる{|ある操作| [ ある操作.元の名前, ある操作 ] }.
                                 連想配列に変換

  操作の一覧.
    除く{|名前| 日本語の別名を持つ操作の表.含むか? 名前 }.
    除く{|名前| 物で定義済みの操作の表.含むか? 名前 }
}

[ [ 組と操作の名前の表,   組の表 ],
  [ 部と操作の名前の表,   部の表 ],
  [ 例外と操作の名前の表, 例外の表 ]
].個別に{|名前の表, 組または部の表|
  組または部の一覧 = 組または部の表.キーの一覧
  組または部の一覧.この条件で整列!{|甲| 甲.名前 }
  組または部の一覧.個別に{|組または部|
    操作の名前の表 = {}

    定数の一覧 = 組または部.定数の一覧(偽値)
    警告の出力.ignore(/: warning: constant \S+ is deprecated\n\z/)
    定数の一覧.除く!{|名前| 組または部.定数を取得(名前).一種か? 部 }
    もし条件が{ 日本語の別名が未定義 }.であるなら{
      日本語の別名を持つ値の表 = 定数の一覧.
                                   検索(日本語の名前に一致する正規表現).
                                   対応させる{|名前| [ 組または部.定数を取得(名前), 名前 ] }.
                                   連想配列に変換
      定数の一覧.除く!{|名前| 日本語の別名を持つ値の表.含むか? 組または部.定数を取得(名前) }
    }.である
    警告の出力.clear
    操作の名前の表['定数'] = 定数の一覧.
                               対象外を検索(日本語の名前に一致する正規表現).
                               整列.
                               対応させる{|名前| "#{組または部}::#{名前}" }

    [ [ '特異操作',                   '.', 組または部.特異組.生成物が持つ公開された操作の一覧(偽値) ],
      [ '生成物が持つ公開された操作', '#', 組または部.生成物が持つ公開された操作の一覧(偽値) ],
      [ '生成物が持つ保護された操作', '#', 組または部.生成物が持つ保護された操作の一覧(偽値) ],
      [ '生成物が持つ秘密の操作',     '#', 組または部.生成物が持つ秘密の操作の一覧(偽値) ]
    ].個別に{|種別, 区切り, 操作の一覧|
      操作の一覧 = 操作の一覧.除く{|名前|
        組み込みではない操作に一致する正規表現の一覧.何れかが成り立つか?{|ある正規表現| 名前 =~ ある正規表現 }
      }
      もし条件が{ 日本語の別名が未定義 }.であるなら{
        操作の一覧 = 日本語の別名を持つ操作を除外(組または部, 操作の一覧, 区切り)
      }.である
      操作の名前の表[種別] = 操作の一覧.
                               対象外を検索(日本語の名前に一致する正規表現).
                               整列.
                               対応させる{|名前| "#{組または部.名前}#{区切り}#{名前}" }
    }
    名前の表[組または部.名前] = 操作の名前の表
  }
}

大域的な物の一覧 = [
  [ 'nil',   nil ],
  [ 'true',  true ],
  [ 'false', false ]
]
大域的な物の一覧 += 大域変数の一覧.
                      対応させる(&:文字列に変換).
                      対象外を検索('$KCODE').
                      対象外を検索('$SAFE').
                      対象外を検索(日本語の名前に一致する正規表現).
                      整列.
                      対応させる{|名前| [ 名前, 評価(名前) ] }
大域的な物の一覧 += %w[ ARGV ARGF ENV STDERR STDIN STDOUT TOPLEVEL_BINDING ].
                      対応させる{|名前| [ 名前, 物.定数を取得(名前) ] }

定義(:物が持つ操作の一覧を取得) {|ある物|
  領域{|制御|
    制御.本処理{
      もし条件が{ ある物.特異組 != ある物.生成元 }.であるなら{
        ある物.特異組.生成物が持つ公開された操作の一覧(偽値)
      }.でなければ{
        []
      }.である
    }
    制御.例外を捕捉(型が合わないため失敗) {
      []
    }
  }
}

物と操作の名前の表 = {}
大域的な物の一覧.個別に{|物の名前, ある物|
  操作の一覧 = 物が持つ操作の一覧を取得(ある物)
  もし条件が{ 日本語の別名が未定義 }.であるなら{
    操作の一覧 = 日本語の別名を持つ操作を除外(ある物, 操作の一覧, '.')
  }.である
  物と操作の名前の表[物の名前] = 操作の一覧.
                                   対象外を検索(日本語の名前に一致する正規表現).
                                   整列.
                                   対応させる{|名前| "#{物の名前}.#{名前}" }
}

組み込みライブラリの表 = {
  '組'   => 組と操作の名前の表,
  '部'   => 部と操作の名前の表,
  '例外' => 例外と操作の名前の表,
  '物'   => 物と操作の名前の表
}

行を出力 組み込みライブラリの表.to_yaml
