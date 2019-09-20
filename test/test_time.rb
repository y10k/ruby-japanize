# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/test_unit'
要求 'japanize/time'
要求 'time'

部(日本語化) {
  部(:試験) {
    組(:時刻の操作の試験, 原型: 試験単位::試験事例) {
      資料('この時'           => [ :この時,           :at ],
           'グリニッジ標準時' => [ :グリニッジ標準時, :gm ],
           '協定世界時'       => [ :協定世界時,       :utc ],
           '地方時'           => [ :地方時,           :local ],
           '地方標準時'       => [ :地方標準時,       :local ],
           '作成'             => [ :作成,             :mktime ],
           '現在'             => [ :現在,             :now ])
      試験('特異操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(時刻, 日本語の別名, 元の名前)
        含まれることを確認(時刻.公開された操作の一覧, 日本語の別名)
      }

      資料('アスキー形式に変換'       => [ :アスキー形式に変換,       :asctime ],
           '日'                       => [ :日,                       :day ],
           '夏時間か?'                => [ :夏時間か?,                :dst? ],
           '金曜日か?'                => [ :金曜日か?,                :friday? ],
           'グリニッジ標準時を取得'   => [ :グリニッジ標準時を取得,   :getgm ],
           '協定世界時を取得'         => [ :協定世界時を取得,         :getutc ],
           '地方時を取得'             => [ :地方時を取得,             :getlocal ],
           '地方標準時を取得'         => [ :地方標準時を取得,         :getlocal ],
           'グリニッジ標準時か?'      => [ :グリニッジ標準時か?,      :gmt? ],
           '協定世界時か?'            => [ :協定世界時か?,            :utc? ],
           'グリニッジ標準時との時差' => [ :グリニッジ標準時との時差, :gmt_offset ],
           '協定世界時との時差'       => [ :協定世界時との時差,       :utc_offset ],
           'グリニッジ標準時に変更'   => [ :グリニッジ標準時に変更,   :gmtime ],
           '協定世界時に変更'         => [ :協定世界時に変更,         :utc ],
           '時'                       => [ :時,                       :hour ],
           '地方時に変更'             => [ :地方時に変更,             :localtime ],
           '地方標準時に変更'         => [ :地方標準時に変更,         :localtime ],
           '分'                       => [ :分,                       :min ],
           '月'                       => [ :月,                       :mon ],
           '月曜日か?'                => [ :月曜日か?,                :monday? ],
           'ナノ秒'                   => [ :ナノ秒,                   :nsec ],
           '端数を丸める'             => [ :端数を丸める,             :round ],
           '土曜日か?'                => [ :土曜日か?,                :saturday? ],
           '秒'                       => [ :秒,                       :sec ],
           '文字列に整形'             => [ :文字列に整形,             :strftime ],
           '一秒未満の時刻'           => [ :一秒未満の時刻,           :subsec ],
           '一つ後'                   => [ :一つ後,                   :succ ],
           '日曜日か?'                => [ :日曜日か?,                :sunday? ],
           '木曜日か?'                => [ :木曜日か?,                :thursday? ],
           '配列に変換'               => [ :配列に変換,               :to_a ],
           '浮動小数点に変換'         => [ :浮動小数点に変換,         :to_f ],
           '整数に変換'               => [ :整数に変換,               :to_i ],
           '起算時からの経過秒数'     => [ :起算時からの経過秒数,     :tv_sec ],
           '有理数に変換'             => [ :有理数に変換,             :to_r ],
           '火曜日か?'                => [ :火曜日か?,                :tuesday? ],
           'マイクロ秒'               => [ :マイクロ秒,               :usec ],
           'μ秒'                     => [ :μ秒,                     :usec ],
           '曜日'                     => [ :曜日,                     :wday ],
           '水曜日か?'                => [ :水曜日か?,                :wednesday? ],
           '年間の通算日'             => [ :年間の通算日,             :yday ],
           '年'                       => [ :年,                       :year ],
           '時間帯'                   => [ :時間帯,                   :zone ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(時刻.新規, 日本語の別名, 元の名前)
        含まれることを確認(時刻.生成物が持つ公開された操作の一覧, 日本語の別名)
      }

      資料('HTTP日付の形式' => [
             :httpdate,
             :HTTP日付の形式,
             [ 'Sun, 31 Aug 2008 12:34:56 GMT' ],
             時刻.協定世界時(2008, 8, 31, 12, 34, 56)
           ],
           '国際標準の形式' => [
             :iso8601,
             :国際標準の形式,
             [ '2008-08-31T12:34:56+09:00' ],
             (時刻.協定世界時(2008, 8, 31, 12, 34, 56) - 60 * 60 * 9).地方標準時に変更('+09:00')
           ],
           'XMLスキーマの形式' => [
             :xmlschema,
             :XMLスキーマの形式,
             [ '2008-08-31T12:34:56+09:00' ],
             (時刻.協定世界時(2008, 8, 31, 12, 34, 56) - 60 * 60 * 9).地方標準時に変更('+09:00')
           ],
           '書式を解析' => [
             :parse,
             :書式を解析,
             [ 'Thu Nov 29 14:33:20 GMT 2001' ],
             時刻.協定世界時(2001, 11, 29, 14, 33, 20)
           ],
           '電子メールの付加情報の形式' => [
             :rfc2822,
             :電子メールの付加情報の形式,
             [ 'Sun, 31 Aug 2008 12:08:19 +0900' ],
             (時刻.協定世界時(2008, 8, 31, 12, 8, 19) - 60 * 60 * 9).地方標準時に変更('+09:00')
           ],
           '書式を指定して解析' => [
             :strptime,
             :書式を指定して解析,
             [ '2001-02-03T04:05:06+09:00', '%Y-%m-%dT%H:%M:%S%z' ],
             (時刻.協定世界時(2001, 2, 3, 4, 5, 6) - 60 * 60 * 9).地方標準時に変更('+09:00')
           ])
      試験('添付ライブラリの特異操作を確認') {|資料|
        元の操作, 日本語化した操作, 引数, 期待する結果 = 資料
        等しいことを確認(期待する結果, 時刻.公開された範囲で送信(元の操作, *引数))
        等しいことを確認(期待する結果, 時刻.公開された範囲で送信(日本語化した操作, *引数))
      }

      資料('HTTP日付の形式' => [
             :httpdate,
             :HTTP日付の形式,
             'Sun, 31 Aug 2008 03:34:56 GMT'
           ],
           '国際標準の形式' => [
             :iso8601,
             :国際標準の形式,
             '2008-08-31T03:34:56Z'
           ],
           'XMLスキーマの形式' => [
             :xmlschema,
             :XMLスキーマの形式,
             '2008-08-31T03:34:56Z'
           ],
           '電子メールの付加情報の形式' => [
             :rfc2822,
             :電子メールの付加情報の形式,
             'Sun, 31 Aug 2008 03:34:56 -0000'
           ])
      試験('添付ライブラリの操作を確認') {|資料|
        元の操作, 日本語化した操作, 期待する結果 = 資料
        ある時刻 = 時刻.協定世界時(2008, 8, 31, 3, 34, 56)
        等しいことを確認(期待する結果, ある時刻.公開された範囲で送信(元の操作))
        等しいことを確認(期待する結果, ある時刻.公開された範囲で送信(日本語化した操作))
      }
    }
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
