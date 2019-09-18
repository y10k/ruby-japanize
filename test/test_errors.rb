# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/errors'
要求 'japanize/test_unit'

部(日本語化) {
  部(:試験) {
    組(:例外や失敗の操作の試験, 原型: 試験単位::試験事例) {
      [ [ '配置の失敗', [],
          [ [ :ファイルへの経路, :path ] ]
        ],
        [ 'シグナルの例外', [ 1 ],
          [ [ :シグナルの名前, :signm, true ],
            [ :シグナルの番号, :signo ]
          ]
        ],
        [ '脱出を捕捉できないため失敗', [ :試験の目印, '試験の値' ],
          [ [ :目印, :tag ],
            [ :値,   :value ],
          ]
        ],
        [ 'キーの照合に失敗', [],
          [ [ :キー,   :key,      true ],
            [ :受信先, :receiver, true ]
          ]
        ],
        [ '繰り返しの停止', [],
          [ [ :結果, :result ] ]
        ],
        [ '局所的な跳躍に失敗', [],
          [ [ :終了値, :exit_value ],
            [ :原因,   :reason ],
          ]
        ],
        [ '名前解決に失敗', [],
          [ [ :局所変数の一覧, :local_variables, true ],
            [ :名前,           :name,            true ],
            [ :受信先,         :receiver,        true ]
          ]
        ],
        [ '操作が無いため失敗', [],
          [ [ :引数,                    :args ],
            [ :秘密の形式で呼ばれたか?, :private_call? ]
          ]
        ],
        [ 'システムコールの失敗', [ '試験の伝文', 2 ],
          [ [ :失敗の種類を表す番号, :errno ] ]
        ],
        [ 'システムの終了', [],
          [ [ :状態,        :status ],
            [ :成功したか?, :success? ]
          ]
        ],
        [ '文字符号化方式::バイト列が不正なため失敗', [],
          [ [ :変換先の文字符号化方式,       :destination_encoding ],
            [ :変換先の文字符号化方式の名前, :destination_encoding_name ],
            [ :不正なバイト列,               :error_bytes ],
            [ :入力が不完全か?,              :incomplete_input? ],
            [ :読み直すバイト列,             :readagain_bytes ],
            [ :変換元の文字符号化方式,       :source_encoding ],
            [ :変換元の文字符号化方式の名前, :source_encoding_name ]
          ]
        ],
        [ '文字符号化方式::変換後の文字が存在しないため失敗', [],
          [ [ :変換先の文字符号化方式,       :destination_encoding ],
            [ :変換先の文字符号化方式の名前, :destination_encoding_name ],
            [ :不正な文字,                   :error_char ],
            [ :変換元の文字符号化方式,       :source_encoding ],
            [ :変換元の文字符号化方式の名前, :source_encoding_name ]
          ]
        ]
      ].each do |例外の名前, 初期化の引数, 日本語の操作名の一覧|
        for 日本語の別名, 元の名前, 何故か操作が一致しない in 日本語の操作名の一覧
          例外の型 = 評価(例外の名前)
          資料("#{例外の名前}##{日本語の別名}", [ 例外の型, 初期化の引数, 日本語の別名, 元の名前, 何故か操作が一致しない ])
        end
      end
      試験('公開された操作の日本語の別名を確認') {|資料|
        例外の型, 初期化の引数, 日本語の別名, 元の名前, 何故か操作が一致しない = 資料
        if (何故か操作が一致しない) then
          # 等しくないことを確認(例外の型.生成物が持つ操作を取得(元の名前), # 一致したりしなかったりする、何故?
          #                      例外の型.生成物が持つ操作を取得(日本語の別名))
          等しいことを確認(例外の型.生成物が持つ操作を取得(元の名前).original_name,
                           例外の型.生成物が持つ操作を取得(日本語の別名).original_name)
        else
          別名であることを確認(例外の型.新規(*初期化の引数), 日本語の別名, 元の名前)
        end
        含まれることを確認(例外の型.生成物が持つ公開された操作の一覧, 日本語の別名)
      }
    }
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
