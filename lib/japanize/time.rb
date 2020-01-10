# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/base'
要求 'japanize/names'

組(時刻) {
  特異組{
    別名 :この時,           :at
    別名 :グリニッジ標準時, :gm
    別名 :協定世界時,       :utc
    別名 :地方時,           :local
    別名 :地方標準時,       :local
    別名 :作成,             :mktime
    別名 :現在,             :now
  }

  別名 :アスキー形式に変換,       :asctime
  別名 :切り上げ,                 :ceil if (公開された操作は定義済みか? :ceil, 偽値)
  別名 :日,                       :day
  別名 :夏時間か?,                :dst?
  # 別名 :等しいか?,              :eql?    # 物で定義済み
  別名 :切り下げ,                 :floor if (公開された操作は定義済みか? :floor, 偽値)
  別名 :金曜日か?,                :friday?
  別名 :グリニッジ標準時を取得,   :getgm
  別名 :協定世界時を取得,         :getutc
  別名 :地方時を取得,             :getlocal
  別名 :地方標準時を取得,         :getlocal
  別名 :グリニッジ標準時か?,      :gmt?
  別名 :協定世界時か?,            :utc?
  別名 :グリニッジ標準時との時差, :gmt_offset
  別名 :協定世界時との時差,       :utc_offset
  別名 :グリニッジ標準時に変更,   :gmtime
  別名 :協定世界時に変更,         :utc
  # 別名 :ハッシュ値,             :hash    # 物で定義済み
  別名 :時,                       :hour
  別名 :地方時に変更,             :localtime
  別名 :地方標準時に変更,         :localtime
  別名 :分,                       :min
  別名 :月,                       :mon
  別名 :月曜日か?,                :monday?
  別名 :ナノ秒,                   :nsec
  別名 :端数を丸める,             :round
  別名 :土曜日か?,                :saturday?
  別名 :秒,                       :sec
  別名 :文字列に整形,             :strftime
  別名 :一秒未満の時刻,           :subsec
  別名 :一つ後,                   :succ
  別名 :日曜日か?,                :sunday?
  別名 :木曜日か?,                :thursday?
  別名 :配列に変換,               :to_a
  別名 :浮動小数点に変換,         :to_f
  別名 :整数に変換,               :to_i
  別名 :起算時からの経過秒数,     :tv_sec
  別名 :有理数に変換,             :to_r
  # 別名 :文字列に変換,           :to_s    # 物で定義済み
  別名 :火曜日か?,                :tuesday?
  別名 :マイクロ秒,               :usec
  別名 :μ秒,                     :usec
  別名 :曜日,                     :wday
  別名 :水曜日か?,                :wednesday?
  別名 :年間の通算日,             :yday
  別名 :年,                       :year
  別名 :時間帯,                   :zone

  # timeライブラリのための定義
  # timeライブラリが配置されるまで未定義なので別名にしない。
  特異組{
    `定義 HTTP日付の形式(...);              httpdate(...)`
    `定義 国際標準の形式(...);               iso8601(...)`
    `定義 XMLスキーマの形式(...);          xmlschema(...)`
    `定義 書式を解析(...);                     parse(...)`
    `定義 電子メールの付加情報の形式(...);   rfc2822(...)`
    `定義 書式を指定して解析(...);          strptime(...)`
  }
  `定義 HTTP日付の形式(...);              httpdate(...)`
  `定義 国際標準の形式(...);               iso8601(...)`
  `定義 XMLスキーマの形式(...);          xmlschema(...)`
  `定義 電子メールの付加情報の形式(...);   rfc2822(...)`
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
