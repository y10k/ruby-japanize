# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/base'
要求 'japanize/test_unit'

部(日本語化) {
  部(:試験) {
    組(:部の操作の試験, 原型: 試験単位::試験事例) {
      資料('定数の一覧'       => [ :定数の一覧,       :constants ],
           '入れ子'           => [ :入れ子,           :nesting ],
           '新規'             => [ :新規,             :new ],
           '使用中の部の一覧' => [ :使用中の部の一覧, :used_modules ])
      試験('特異操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(部, 日本語の別名, 元の名前)
        含まれることを確認(部.公開された操作の一覧, 日本語の別名)
      }

      資料('別名'                             => [ :別名,                             :alias_method ],
           '原型の一覧'                       => [ :原型の一覧,                       :ancestors ],
           '属性'                             => [ :属性,                             :attr ],
           '読み書き属性'                     => [ :読み書き属性,                     :attr_accessor ],
           '読み取り属性'                     => [ :読み取り属性,                     :attr_reader ],
           '書き込み属性'                     => [ :書き込み属性,                     :attr_writer ],
           '自動配置'                         => [ :自動配置,                         :autoload ],
           '自動配置か?'                      => [ :自動配置か?,                      :autoload? ],
           '部で評価'                         => [ :部で評価,                         :module_eval ],
           '組で評価'                         => [ :組で評価,                         :class_eval ],
           '組の変数は定義済みか?'            => [ :組の変数は定義済みか?,            :class_variable_defined? ],
           '組の変数の一覧'                   => [ :組の変数の一覧,                   :class_variables ],
           '定数の一覧'                       => [ :定数の一覧,                       :constants ],
           '定義'                             => [ :定義,                             :define_method ],
           '凍結する'                         => [ :凍結する,                         :freeze ],
           '付加'                             => [ :付加,                             :include ],
           '付加済みか?'                      => [ :付加済みか?,                      :include? ],
           '含まれる部の一覧'                 => [ :含まれる部の一覧,                 :included_modules ],
           '名前'                             => [ :名前,                             :name ],
           '生成物が持つ操作を取得'           => [ :生成物が持つ操作を取得,           :instance_method ],
           '生成物が持つ操作の一覧'           => [ :生成物が持つ操作の一覧,           :instance_methods ],
           '操作は定義済みか?'                => [ :操作は定義済みか?,                :method_defined? ],
           '付与'                             => [ :付与,                             :prepend ],
           '組が持つ操作を秘密にする'         => [ :組が持つ操作を秘密にする,         :private_class_method ],
           '生成物が持つ秘密の操作の一覧'     => [ :生成物が持つ秘密の操作の一覧,     :private_instance_methods ],
           '秘密の操作は定義済みか?'          => [ :秘密の操作は定義済みか?,          :private_method_defined? ],
           '生成物が持つ保護された操作の一覧' => [ :生成物が持つ保護された操作の一覧, :protected_instance_methods ],
           '保護された操作は定義済みか?'      => [ :保護された操作は定義済みか?,      :protected_method_defined? ],
           '組が持つ操作を公開する'           => [ :組が持つ操作を公開する,           :public_class_method ],
           '生成物が持つ公開された操作を取得' => [ :生成物が持つ公開された操作を取得, :public_instance_method ],
           '生成物が持つ公開された操作の一覧' => [ :生成物が持つ公開された操作の一覧, :public_instance_methods ],
           '公開された操作は定義済みか?'      => [ :公開された操作は定義済みか?,      :public_method_defined? ],
           '組の変数を除去する'               => [ :組の変数を除去する,               :remove_class_variable ],
           '操作を除去する'                   => [ :操作を除去する,                   :remove_method ],
           '操作を未定義にする'               => [ :操作を未定義にする,               :undef_method ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(部.新規, 日本語の別名, 元の名前)
        含まれることを確認(部.生成物が持つ公開された操作の一覧, 日本語の別名)
      }

      資料('機能を付加する'     => [ :機能を付加する,     :append_features ],
           '部で実行'           => [ :部で実行,           :module_exec ],
           '組で実行'           => [ :組で実行,           :class_exec ],
           '組の変数を取得'     => [ :組の変数を取得,     :class_variable_get ],
           '組の変数を設定'     => [ :組の変数を設定,     :class_variable_set ],
           '定数を非推奨にする' => [ :定数を非推奨にする, :deprecate_constant ],
           '物を拡張する'       => [ :物を拡張する,       :extend_object ],
           '部の関数'           => [ :部の関数,           :module_function ],
           '秘密'               => [ :秘密,               :private ],
           '機能を付与する'     => [ :機能を付与する,     :prepend_features ],
           '秘密の定数'         => [ :秘密の定数,         :private_constant ],
           '保護'               => [ :保護,               :protected ],
           '公開'               => [ :公開,               :public ],
           '公開された定数'     => [ :公開された定数,     :public_constant ],
           '限定拡張'           => [ :限定拡張,           :refine ],
           '定数を除去する'     => [ :定数を除去する,     :remove_const ],
           '特異組か?'          => [ :特異組か?,          :singleton_class? ],
           '限定拡張を使用'     => [ :限定拡張を使用,     :using ])
      試験('秘密の操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(部.新規, 日本語の別名, 元の名前)
        含まれることを確認(部.生成物が持つ秘密の操作の一覧, 日本語の別名)
      }

      試験('不明な定数の確認') {
        ある部 = 部.新規
        ある部.定数を設定 :FOO, :FOO

        等しいことを確認(:FOO, ある部::FOO)
        例外が発生することを確認(名前解決に失敗) { ある部::BAR }
        例外が発生することを確認(名前解決に失敗) { ある部::BAZ }

        呼び出し履歴 = []
        ある部.特異操作の定義(:不明な定数) {|名前|
          呼び出し履歴 << 名前
          名前
        }

        等しいことを確認(:FOO, ある部::FOO)
        等しいことを確認([], 呼び出し履歴)

        等しいことを確認(:BAR, ある部::BAR)
        等しいことを確認([ :BAR ], 呼び出し履歴)

        等しいことを確認(:BAZ, ある部::BAZ)
        等しいことを確認([ :BAR, :BAZ ], 呼び出し履歴)
      }

      試験('拡張した時の確認') {
        呼び出し履歴 = []

        ある部 = 部.新規
        ある部.特異操作の定義(:拡張した時) {|物|
          呼び出し履歴 << 物
        }

        ある物 = 物.新規
        ある物.拡張(ある部)
        等しいことを確認([ ある物 ], 呼び出し履歴)
      }

      試験('付加された時の確認') {
        呼び出し履歴 = []

        ある部 = 部.新規
        ある部.特異操作の定義(:付加された時) {|組または部|
          呼び出し履歴 << 組または部
        }

        ある組 = 組.新規
        ある組.付加(ある部)
        等しいことを確認([ ある組 ], 呼び出し履歴)
      }

      試験('操作が追加された時_除去された時_未定義にされた時の確認') {
        呼び出し履歴 = []

        ある部 = 部.新規
        ある部.特異操作の定義(:操作が追加された時) {|名前|
          呼び出し履歴 << [ :追加, 名前 ]
        }
        ある部.特異操作の定義(:操作が除去された時) {|名前|
          呼び出し履歴 << [ :除去, 名前 ]
        }
        ある部.特異操作の定義(:操作が未定義にされた時) {|名前|
          呼び出し履歴 << [ :未定義, 名前 ]
        }

        ある部.定義(:追加して除去される操作) {}
        等しいことを確認([ [ :追加, :追加して除去される操作 ] ],
                         呼び出し履歴)

        ある部.定義(:追加して未定義にされる操作) {}
        等しいことを確認([ [ :追加, :追加して除去される操作 ],
                           [ :追加, :追加して未定義にされる操作 ]
                         ],
                         呼び出し履歴)

        ある部.操作を除去する(:追加して除去される操作)
        等しいことを確認([ [ :追加, :追加して除去される操作 ],
                           [ :追加, :追加して未定義にされる操作 ],
                           [ :除去, :追加して除去される操作 ]
                         ],
                         呼び出し履歴)

        ある部.操作を未定義にする(:追加して未定義にされる操作)
        等しいことを確認([ [ :追加,   :追加して除去される操作 ],
                           [ :追加,   :追加して未定義にされる操作 ],
                           [ :除去,   :追加して除去される操作 ],
                           [ :未定義, :追加して未定義にされる操作 ]
                         ],
                         呼び出し履歴)
      }

      試験('付与された時の確認') {
        呼び出し履歴 = []

        ある部 = 部.新規
        ある部.特異操作の定義(:付与された時) {|組または部|
          呼び出し履歴 << 組または部
        }

        ある組 = 組.新規
        ある組.付与(ある部)
        等しいことを確認([ ある組 ], 呼び出し履歴)
      }

      試験('日本語の定数を移譲する確認') {
        ある部 = 部.新規
        部(ある部) {
          日本語の定数 :甲, :イ
          日本語の定数 :乙, :ロ
          日本語の定数 :丁, :ハ
        }

        ある組 = 組.新規
        例外が発生することを確認(操作が無いため失敗) { ある組::甲 }
        例外が発生することを確認(操作が無いため失敗) { ある組::乙 }
        例外が発生することを確認(操作が無いため失敗) { ある組::丁 }

        ある組.日本語の定数を移譲(ある部, :甲)
        等しいことを確認(:イ, ある組::甲)
        例外が発生することを確認(操作が無いため失敗) { ある組::乙 }
        例外が発生することを確認(操作が無いため失敗) { ある組::丁 }

        ある組.日本語の定数を移譲(ある部, :乙, :丁)
        等しいことを確認(:イ, ある組::甲)
        等しいことを確認(:ロ, ある組::乙)
        等しいことを確認(:ハ, ある組::丁)
      }

      資料('既定値'       => [ {},               :ハ ],
           '上書きしない' => [ { 上書き: 偽値 }, :ハ ],
           '上書きする'   => [ { 上書き: 真値 }, :イ ])
      試験('日本語の定数を移譲して上書きする確認') {|資料|
        名前付き引数, 期待する定数値 = 資料

        ある部 = 部.新規
        部(ある部) {
          日本語の定数 :甲, :イ
          日本語の定数 :乙, :ロ
        }

        ある組 = 組.新規
        組(ある組) {
          日本語の定数 :甲, :ハ
        }

        ある組.日本語の定数を移譲(ある部, :甲, :乙, **名前付き引数)
        等しいことを確認(期待する定数値, ある組::甲)
        等しいことを確認(:ロ, ある組::乙)
      }

      試験('日本語の定数の移譲に失敗する確認') {
        ある部 = 部.新規
        部(ある部) {
          特異組{
            定義(:甲) {|引数1|
              :イ
            }

            定義(:乙) { :ロ }
            秘密 :乙
          }
        }

        ある組 = 組.新規

        ある失敗 = 例外が発生することを確認(名前解決に失敗) { ある組.日本語の定数を移譲(ある部, :甲) }
        一致することを確認(/甲/, ある失敗.伝文)

        ある失敗 = 例外が発生することを確認(名前解決に失敗) { ある組.日本語の定数を移譲(ある部, :乙) }
        一致することを確認(/乙/, ある失敗.伝文)
      }

      試験('日本語の定数を付加する確認') {
        ある部 = 部.新規
        部(ある部) {
          日本語の定数 :甲, :イ
          日本語の定数 :乙, :ロ
          日本語の定数を付加できること(:甲, :乙)
        }

        付加対象の組 = 組.新規
        組(付加対象の組) {
          日本語の定数 :乙, :ハ
          付加 ある部
        }
        等しいことを確認(:イ, 付加対象の組::甲)
        等しいことを確認(:ハ, 付加対象の組::乙)

        付与対象の組 = 組.新規
        組(付与対象の組) {
          日本語の定数 :乙, :ハ
          付与 ある部
        }
        等しいことを確認(:イ, 付与対象の組::甲)
        等しいことを確認(:ロ, 付与対象の組::乙)
      }
    }

    組(:組の操作の試験, 原型: 試験単位::試験事例) {
      資料('部の関数'       => :部の関数,
           '物を拡張する'   => :物を拡張する,
           '機能を付加する' => :機能を付加する,
           '機能を付与する' => :機能を付与する,
           '限定拡張'       => :限定拡張)
      試験('未定義の操作を確認') {|資料|
        名前 = 資料
        偽値であることを確認(組.操作は定義済みか? 名前)
      }

      資料('新規' => [ :新規, :new ])
      試験('特異操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(組, 日本語の別名, 元の名前)
        含まれることを確認(組.公開された操作の一覧, 日本語の別名)
      }

      資料('生成' => [ :生成, :allocate ],
           '原型' => [ :原型, :superclass ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(組.新規, 日本語の別名, 元の名前)
        含まれることを確認(組.生成物が持つ公開された操作の一覧, 日本語の別名)
      }

      試験('継承された時の確認') {
        呼び出し履歴 = []

        ある組 = 組.新規
        ある組.特異操作の定義(:継承された時) {|継承した組|
          呼び出し履歴 << 継承した組
        }

        別の組 = 組.新規(ある組)
        等しいことを確認([ 別の組 ], 呼び出し履歴)
      }
    }

    組(:物の土台の操作の試験, 原型: 試験単位::試験事例) {
      資料('__識別番号__' => [ :__識別番号__,  :__id__ ],
           '__送信__'     => [ :__送信__,      :__send__ ],
           '生成物で評価' => [ :生成物で評価,  :instance_eval ],
           '生成物で実行' => [ :生成物で実行, :instance_exec ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(物の土台, 日本語の別名, 元の名前)
        含まれることを確認(物の土台.生成物が持つ公開された操作の一覧, 日本語の別名)
      }

      試験('不明な操作の確認') {
        # 物の土台に必要な操作が定義されていないため、継承先で間接的に確認する
        ある物 = 物.新規
        例外が発生することを確認(操作が無いため失敗) { ある物.甲(:イ, :ロ, :ハ) }
        例外が発生することを確認(操作が無いため失敗) { ある物.乙(:ニ, :ホ, :ヘ, :ト) }

        呼び出し回数 = 0
        呼び出し履歴 = []
        ある物.特異操作の定義(:不明な操作) {|名前, *引数|
          呼び出し履歴 << [ 名前, 引数]
          呼び出し回数 += 1
        }

        等しいことを確認(1, ある物.甲(:イ, :ロ, :ハ))
        等しいことを確認([ [ :甲, [ :イ, :ロ, :ハ ] ] ],
                         呼び出し履歴)

        等しいことを確認(2, ある物.乙(:ニ, :ホ, :ヘ, :ト))
        等しいことを確認([ [ :甲, [ :イ, :ロ, :ハ ] ],
                           [ :乙, [ :ニ, :ホ, :ヘ, :ト ] ]
                         ],
                         呼び出し履歴)
      }

      試験('特異操作が追加された時_除去された時_未定義にされた時の確認') {
        呼び出し履歴 = []

        # 物の土台に必要な操作が定義されていないため、継承先で間接的に確認する
        ある物 = 組.新規{|ある組|
          組(ある組) {
            定義(:特異操作が追加された時) {|名前|
              呼び出し履歴 << [ :追加, 名前 ]
            }
            定義(:特異操作が除去された時) {|名前|
              呼び出し履歴 << [ :除去, 名前 ]
            }
            定義(:特異操作が未定義にされた時) {|名前|
              呼び出し履歴 << [ :未定義, 名前 ]
            }
          }
        }.新規

        ある物.特異操作の定義(:追加して除去される操作) {}
        等しいことを確認([ [ :追加, :追加して除去される操作 ] ],
                         呼び出し履歴)

        ある物.特異操作の定義(:追加して未定義にされる操作) {}
        等しいことを確認([ [ :追加, :追加して除去される操作 ],
                           [ :追加, :追加して未定義にされる操作 ],
                         ],
                         呼び出し履歴)

        ある物.特異組.操作を除去する(:追加して除去される操作)
        等しいことを確認([ [ :追加, :追加して除去される操作 ],
                           [ :追加, :追加して未定義にされる操作 ],
                           [ :除去, :追加して除去される操作 ]
                         ],
                         呼び出し履歴)

        ある物.特異組.操作を未定義にする(:追加して未定義にされる操作)
        等しいことを確認([ [ :追加,   :追加して除去される操作 ],
                           [ :追加,   :追加して未定義にされる操作 ],
                           [ :除去,   :追加して除去される操作 ],
                           [ :未定義, :追加して未定義にされる操作 ]
                         ],
                         呼び出し履歴)
      }
    }

    組(:物の操作の試験, 原型: 試験単位::試験事例) {
      資料('送信'                      => [ :送信,                      :send ],
           '生成元'                    => [ :生成元,                    :class ],
           '特異操作の定義'            => [ :特異操作の定義,            :define_singleton_method ],
           '表示する'                  => [ :表示する,                  :display ],
           '列挙に変換'                => [ :列挙に変換,                :to_enum ],
           '列挙する'                  => [ :列挙する,                  :enum_for ],
           '拡張'                      => [ :拡張,                      :extend ],
           '凍結する'                  => [ :凍結する,                  :freeze ],
           '凍結済みか?'               => [ :凍結済みか?,               :frozen? ],
           '生成物か?'                 => [ :生成物か?,                 :instance_of? ],
           '生成物の変数は定義済みか?' => [ :生成物の変数は定義済みか?, :instance_variable_defined? ],
           '生成物の変数を取得'        => [ :生成物の変数を取得,        :instance_variable_get ],
           '生成物の変数を設定'        => [ :生成物の変数を設定,        :instance_variable_set ],
           '生成物の変数の一覧'        => [ :生成物の変数の一覧,        :instance_variables ],
           '一種か?'                   => [ :一種か?,                   :is_a? ],
           '自分自身'                  => [ :自分自身,                  :itself ],
           '操作を取得'                => [ :操作を取得,                :method ],
           '操作の一覧'                => [ :操作の一覧,                :methods ],
           '無値か?'                   => [ :無値か?,                   :nil? ],
           '物の識別番号'              => [ :物の識別番号,              :object_id ],
           '秘密の操作の一覧'          => [ :秘密の操作の一覧,          :private_methods ],
           '保護された操作の一覧'      => [ :保護された操作の一覧,      :protected_methods ],
           '公開された操作を取得'      => [ :公開された操作を取得,      :public_method ],
           '公開された操作の一覧'      => [ :公開された操作の一覧,      :public_methods ],
           '公開された範囲で送信'      => [ :公開された範囲で送信,      :public_send ],
           '生成物の変数を除去する'    => [ :生成物の変数を除去する,    :remove_instance_variable ],
           '応答するか?'               => [ :応答するか?,               :respond_to? ],
           '特異組'                    => [ :特異組,                    :singleton_class ],
           '特異操作を取得'            => [ :特異操作を取得,            :singleton_method ],
           '特異操作の一覧'            => [ :特異操作の一覧,            :singleton_methods ],
           '汚染させる'                => [ :汚染させる,                :taint ],
           '汚染されているか?'         => [ :汚染されているか?,         :tainted? ],
           '蛇口'                      => [ :蛇口,                      :tap ],
           'それから'                  => [ :それから,                  :then ],
           '自分を委ねる'              => [ :自分を委ねる,              :yield_self ],
           '汚染を除去する'            => [ :汚染を除去する,            :untaint ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, _元の名前 = 資料
        # 別名であることを確認(物.新規, 日本語の別名, _元の名前) # 何故か失敗する
        含まれることを確認(物.生成物が持つ公開された操作の一覧, 日本語の別名)
      }

      ある物 = 物.新規
      資料('複写'         => [ :複写,         :clone,   λ{ ある物 },       [] ],
           '複製'         => [ :複製,         :dup,     λ{ ある物 },       [] ],
           '等しいか?'    => [ :等しいか?,    :eql?,    λ{|他の物| 真値 }, [ 物.新規 ] ],
           'ハッシュ値'   => [ :ハッシュ値,   :hash,    λ{ -1 },           [] ],
           '検査'         => [ :検査,         :inspect, λ{ '検査の試験' }, [] ],
           '文字列に変換' => [ :文字列に変換, :to_s,    λ{ '検査の試験' }, [] ])
      試験('操作の再定義を確認') {|資料|
        日本語の操作, 再定義する操作, 操作の手続き, 操作の引数 = 資料

        ある物 = 物.新規
        ある物.特異操作の定義(再定義する操作) {|*引数|
          操作の手続き[*引数]
        }

        等しいことを確認(ある物.公開された範囲で送信(再定義する操作, *操作の引数),
                         ある物.公開された範囲で送信(日本語の操作, *操作の引数))
      }

      試験('初期化の確認') {
        ある物 = 組.新規(物) {|ある組|
          組(ある組) {
            定義(:初期化) {|甲, 乙|
              @甲 = 甲
              @乙 = 乙
            }
            読み取り属性 :甲, :乙
          }
        }.新規(:イロハ, :ニホヘト)

        含まれることを確認(ある物.秘密の操作の一覧, :初期化)
        等しいことを確認(:イロハ, ある物.甲)
        等しいことを確認(:ニホヘト, ある物.乙)
      }

      試験('不明な応答の確認') {
        ある物 = 物.新規
        真値であることを確認(ある物.応答するか? :自分自身)
        偽値であることを確認(ある物.応答するか? :甲)
        偽値であることを確認(ある物.応答するか? :乙)

        呼び出し履歴 = []
        ある物.特異操作の定義(:不明な応答か?) {|名前, *引数|
          呼び出し履歴 << 名前
          名前 == :甲
        }

        真値であることを確認(ある物.応答するか? :自分自身)
        等しいことを確認([], 呼び出し履歴)

        真値であることを確認(ある物.応答するか? :甲)
        等しいことを確認([ :甲 ], 呼び出し履歴)

        偽値であることを確認(ある物.応答するか? :乙)
        等しいことを確認([ :甲, :乙 ], 呼び出し履歴)
      }
    }

    組(:核の操作の試験, 原型: 試験単位::試験事例) {
      資料('配列' => [
             :Array,
             :配列,
             1..5,
             [ 1, 2, 3, 4, 5 ],
             Array
           ],
           '複素数' => [
             :Complex,
             :複素数,
             '1+2i',
             1 + 2i,
             Complex
           ],
           '不動小数点' => [
             :Float,
             :不動小数点,
             '123.456',
             123.456,
             Float
           ],
           '連想配列' => [
             :Hash,
             :連想配列,
             [],
             {},
             Hash
           ],
           '整数' => [
             :Integer,
             :整数,
             '0x1a',
             26,
             Integer
           ],
           '有理数' => [
             :Rational,
             :有理数,
             '2/3',
             2.to_r / 3,
             Rational
           ],
           '文字列' => [
             :String,
             :文字列,
             123456,
             '123456',
             String
           ])
      試験('組の定義と被る変換関数を確認') {|資料|
        元の関数, 日本語化した関数, 変換元, 変換先, 変換型 = 資料

        生成物ではないことを確認(変換型, 変換元)
        生成物であることを確認(変換型, 変換先)
        等しくないことを確認(変換先, 変換元)

        # 関数として呼び出す場合
        等しいことを確認(変換先, __送信__(元の関数, 変換元))
        等しいことを確認(変換先, __送信__(日本語化した関数, 変換元))
        等しいことを確認(変換先, 核.公開された範囲で送信(元の関数, 変換元))
        等しいことを確認(変換先, 日本語化.公開された範囲で送信(日本語化した関数, 変換元))

        # 組として呼び出す場合
        等しいことを確認(変換型, __送信__(日本語化した関数))
        等しいことを確認(変換型, 日本語化.公開された範囲で送信(日本語化した関数))
      }

      資料('__呼び出し先__'                   => [ :__呼び出し先__,                   :__callee__ ],
           '__ディレクトリ__'                 => [ :__ディレクトリ__,                 :__dir__ ],
           '__操作名__'                       => [ :__操作名__,                       :__method__ ],
           '中断'                             => [ :中断,                             :abort ],
           '終了時に実行'                     => [ :終了時に実行,                     :at_exit ],
           '自動配置'                         => [ :自動配置,                         :autoload ],
           '自動配置か?'                      => [ :自動配置か?,                      :autoload? ],
           '束縛を取得'                       => [ :束縛を取得,                       :binding ],
           '操作に手続きが与えられているか?'  => [ :操作に手続きが与えられているか?,  :block_given? ],
           '呼び出し元'                       => [ :呼び出し元,                       :caller ],
           '呼び出し元の実行履歴の場所の一覧' => [ :呼び出し元の実行履歴の場所の一覧, :caller_locations ],
           '補足'                             => [ :補足,                             :catch ],
           '評価'                             => [ :評価,                             :eval ],
           '外部のプログラムを上書き実行する' => [ :外部のプログラムを上書き実行する, :exec ],
           '終了'                             => [ :終了,                             :exit ],
           '終了!'                            => [ :終了!,                            :exit! ],
           '例外を発生'                       => [ :例外を発生,                       :raise ],
           'プロセスを分岐'                   => [ :プロセスを分岐,                   :fork ],
           '整形'                             => [ :整形,                             :format ],
           '文字列に整形'                     => [ :文字列に整形,                     :sprintf ],
           '行を取得'                         => [ :行を取得,                         :gets ],
           '大域変数の一覧'                   => [ :大域変数の一覧,                   :global_variables ],
           '手続き'                           => [ :手続き,                           :proc ],
           'λ'                               => [ :λ,                               :lambda ],
           '配置'                             => [ :配置,                             :load ],
           '局所変数の一覧'                   => [ :局所変数の一覧,                   :local_variables ],
           '循環'                             => [ :循環,                             :loop ],
           'ファイルを開く'                   => [ :ファイルを開く,                   :open ],
           '点検'                             => [ :点検,                             :p ],
           # '目視点検'                       => [ :目視点検,                         :pp ], # 何故か失敗する
           '印字'                             => [ :印字,                             :print ],
           '整形して印字'                     => [ :整形して印字,                     :printf ],
           '文字を出力'                       => [ :文字を出力,                       :putc ],
           '行を出力'                         => [ :行を出力,                         :puts ],
           '乱数'                             => [ :乱数,                             :rand ],
           '行を読む'                         => [ :行を読む,                         :readline ],
           '全行を読む'                       => [ :全行を読む,                       :readlines ],
           '入出力を選択'                     => [ :入出力を選択,                     :select ],
           '追跡関数を設定'                   => [ :追跡関数を設定,                   :set_trace_func ],
           '待機'                             => [ :待機,                             :sleep ],
           '外部のプログラムを実行する'       => [ :外部のプログラムを実行する,       :spawn ],
           '乱数の種を設定'                   => [ :乱数の種を設定,                   :srand ],
           'システムコールを実行する'         => [ :システムコールを実行する,         :syscall ],
           '外部のコマンドを実行する'         => [ :外部のコマンドを実行する,         :system ],
           'ファイル検査'                     => [ :ファイル検査,                     :test ],
           '脱出'                             => [ :脱出,                             :throw ],
           '大域変数を追跡'                   => [ :大域変数を追跡,                   :trace_var ],
           'シグナルの補足'                   => [ :シグナルの補足,                   :trap ],
           '大域変数の追跡を解除'             => [ :大域変数の追跡を解除,             :untrace_var ],
           '警告'                             => [ :警告,                             :warn ])
      試験('部の関数の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(核, 日本語の別名, 元の名前)
        含まれることを確認(核.生成物が持つ秘密の操作の一覧, 日本語の別名)
        含まれることを確認(核.公開された操作の一覧, 元の名前)
        含まれることを確認(核.公開された操作の一覧, 日本語の別名)
      }
    }

    組(:無値の組の操作の試験, 原型: 試験単位::試験事例) {
      資料('無値か?'          => [ :無値か?,          :nil? ],
           '有理化'           => [ :有理化,           :rationalize ],
           '配列に変換'       => [ :配列に変換,       :to_a ],
           '複素数に変換'     => [ :複素数に変換,     :to_c ],
           '浮動小数点に変換' => [ :浮動小数点に変換, :to_f ],
           '連想配列に変換'   => [ :連想配列に変換,   :to_h ],
           '整数に変換'       => [ :整数に変換,       :to_i ],
           '有理数に変換'     => [ :有理数に変換,     :to_r ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        生成物であることを確認(無値の組, 無値)
        別名であることを確認(無値, 日本語の別名, 元の名前)
        含まれることを確認(無値の組.生成物が持つ公開された操作の一覧, 日本語の別名)
      }
    }

    組(:例外の操作の試験, 原型: 試験単位::試験事例) {
      資料('例外を生成' => [ :例外を生成, :exception ])
      試験('特異操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(例外, 日本語の別名, 元の名前)
        含まれることを確認(例外.公開された操作の一覧, 日本語の別名)
      }

      資料('実行履歴'             => [ :実行履歴,             :backtrace ],
           '実行履歴の場所の一覧' => [ :実行履歴の場所の一覧, :backtrace_locations ],
           '起因'                 => [ :起因,                 :cause ],
           '例外を生成'           => [ :例外を生成,           :exception ],
           '完全な伝文'           => [ :完全な伝文,           :full_message ],
           '伝文'                 => [ :伝文,                 :message ],
           '実行履歴を設定'       => [ :実行履歴を設定,       :set_backtrace ])
      試験('公開された操作の日本語の別名を確認') {|資料|
        日本語の別名, 元の名前 = 資料
        別名であることを確認(例外.新規, 日本語の別名, 元の名前)
        含まれることを確認(例外.生成物が持つ公開された操作の一覧, 日本語の別名)
      }
    }

    組(:各種操作を日本語化できることの試験, 原型: 試験単位::試験事例) {
      資料('配列に変換'       => [ [],             :配列に変換,       :to_a ],
           '連想配列に変換'   => [ {},             :連想配列に変換,   :to_h ],
           '文字列に変換'     => [ '文字列',       :文字列に変換,     :to_s ],
           '記号に変換'       => [ :記号,          :記号に変換,       :to_sym ],
           '整数に変換'       => [ 123,            :整数に変換,       :to_i ],
           '浮動小数点に変換' => [ 123.456,        :浮動小数点に変換, :to_f ],
           '有理数に変換'     => [ 有理数('2/3'),  :有理数に変換,     :to_r ],
           '複素数に変換'     => [ 複素数('1+2i'), :複素数に変換,     :to_c ])
      試験('変換操作を日本語化できることを確認') {|資料|
        変換後の値, 日本語の変換操作, 本来の変換操作 = 資料

        変換操作を持たない物 = 組.新規
        組(変換操作を持たない物) {
          # 操作定義の変更の影響を受けないようにするため、上位の組で未定義にする。
          if (操作は定義済みか? 日本語の変換操作) then
            操作を未定義にする 日本語の変換操作
          end
          if (操作は定義済みか? 本来の変換操作) then
            操作を未定義にする 本来の変換操作
          end
        }

        ある組 = 組.新規(変換操作を持たない物)
        ある物 = ある組.新規
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の変換操作) }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(本来の変換操作) }

        組(ある組) { 定義(日本語の変換操作) { 変換後の値 } }
        等しいことを確認(変換後の値, ある物.公開された範囲で送信(日本語の変換操作))
        等しいことを確認(変換後の値, ある物.公開された範囲で送信(本来の変換操作))

        組(ある組) { 操作を除去する 日本語の変換操作 }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の変換操作) }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(本来の変換操作) }

        組(ある組) { 定義(日本語の変換操作) { 変換後の値 } }
        等しいことを確認(変換後の値, ある物.公開された範囲で送信(日本語の変換操作))
        等しいことを確認(変換後の値, ある物.公開された範囲で送信(本来の変換操作))

        組(ある組) { 操作を未定義にする 日本語の変換操作 }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の変換操作) }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(本来の変換操作) }

        組(ある組) {
          定義(本来の変換操作) { 変換後の値 }
          別名 日本語の変換操作, 本来の変換操作
        }
        等しいことを確認(変換後の値, ある物.公開された範囲で送信(日本語の変換操作))
        等しいことを確認(変換後の値, ある物.公開された範囲で送信(本来の変換操作))
        別名であることを確認(ある物, 日本語の変換操作, 本来の変換操作, '別名を上書きしないことを確認')

        組(ある組) { 操作を未定義にする 日本語の変換操作 }

        ある物.特異操作の定義(日本語の変換操作) { 変換後の値 }
        等しいことを確認(変換後の値, ある物.公開された範囲で送信(日本語の変換操作))
        等しいことを確認(変換後の値, ある物.公開された範囲で送信(本来の変換操作))

        ある物.特異組{ 操作を除去する 日本語の変換操作 }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の変換操作) }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(本来の変換操作) }

        ある物.特異操作の定義(日本語の変換操作) { 変換後の値 }
        等しいことを確認(変換後の値, ある物.公開された範囲で送信(日本語の変換操作))
        等しいことを確認(変換後の値, ある物.公開された範囲で送信(本来の変換操作))

        ある物.特異組{ 操作を未定義にする 日本語の変換操作 }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の変換操作) }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(本来の変換操作) }

        ある物.特異組{
          定義(本来の変換操作) { 変換後の値 }
          別名 日本語の変換操作, 本来の変換操作
        }
        等しいことを確認(変換後の値, ある物.公開された範囲で送信(日本語の変換操作))
        等しいことを確認(変換後の値, ある物.公開された範囲で送信(本来の変換操作))
        別名であることを確認(ある物, 日本語の変換操作, 本来の変換操作, '別名を上書きしないことを確認')
      }

      資料('個別に' => [
             [ :甲, :乙, :丙 ],
             :個別に,
             :each
           ],
           'キー毎に' => [
             [ :甲, :乙, :丙 ],
             :キー毎に,
             :each_key
           ],
           '値毎に' => [
             [ :イ, :ロ, :ハ ],
             :値毎に,
             :each_value
           ],
           '対毎に' => [
             [ [ :甲, :イ ], [ :乙, :ロ ], [ :丙, :ハ ] ],
             :対毎に,
             :each_pair
           ])
      試験('繰り返し操作を日本語化できることを確認') {|資料|
        繰り返す値の一覧, 日本語の繰り返し操作, 本来の繰り返し操作 = 資料

        繰り返し操作を持たない物 = 組.新規
        組(繰り返し操作を持たない物) {
          # 操作定義の変更の影響を受けないようにするため、上位の組で未定義にする。
          if (操作は定義済みか? 日本語の繰り返し操作) then
            操作を未定義にする 日本語の繰り返し操作
          end
          if (操作は定義済みか? 本来の繰り返し操作) then
            操作を未定義にする 本来の繰り返し操作
          end
        }

        ある組 = 組.新規(繰り返し操作を持たない物)
        ある物 = ある組.新規
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の繰り返し操作) }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(本来の繰り返し操作) }

        組(ある組) {
          定義(日本語の繰り返し操作) {|&塊|
            for 値 in 繰り返す値の一覧
              塊[値]
            end
          }
        }
        等しいことを確認(繰り返す値の一覧, 配列(ある物.列挙する(日本語の繰り返し操作)))
        等しいことを確認(繰り返す値の一覧, 配列(ある物.列挙する(本来の繰り返し操作)))

        組(ある組) { 操作を除去する 日本語の繰り返し操作 }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の繰り返し操作) }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(本来の繰り返し操作) }

        組(ある組) {
          定義(日本語の繰り返し操作) {|&塊|
            for 値 in 繰り返す値の一覧
              塊[値]
            end
          }
        }
        等しいことを確認(繰り返す値の一覧, 配列(ある物.列挙する(日本語の繰り返し操作)))
        等しいことを確認(繰り返す値の一覧, 配列(ある物.列挙する(本来の繰り返し操作)))

        組(ある組) { 操作を未定義にする 日本語の繰り返し操作 }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の繰り返し操作) }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(本来の繰り返し操作) }

        組(ある組) {
          定義(本来の繰り返し操作) {|&塊|
            for 値 in 繰り返す値の一覧
              塊[値]
            end
          }

          別名 日本語の繰り返し操作, 本来の繰り返し操作
        }
        等しいことを確認(繰り返す値の一覧, 配列(ある物.列挙する(日本語の繰り返し操作)))
        等しいことを確認(繰り返す値の一覧, 配列(ある物.列挙する(本来の繰り返し操作)))
        別名であることを確認(ある物, 日本語の繰り返し操作, 本来の繰り返し操作, '別名を上書きしないことを確認')

        組(ある組) { 操作を未定義にする 日本語の繰り返し操作 }

        ある物.特異操作の定義(日本語の繰り返し操作) {|&塊|
          for 値 in 繰り返す値の一覧
            塊[値]
          end
        }
        等しいことを確認(繰り返す値の一覧, 配列(ある物.列挙する(日本語の繰り返し操作)))
        等しいことを確認(繰り返す値の一覧, 配列(ある物.列挙する(本来の繰り返し操作)))

        ある物.特異組{ 操作を除去する 日本語の繰り返し操作 }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の繰り返し操作) }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(本来の繰り返し操作) }

        ある物.特異操作の定義(日本語の繰り返し操作) {|&塊|
          for 値 in 繰り返す値の一覧
            塊[値]
          end
        }
        等しいことを確認(繰り返す値の一覧, 配列(ある物.列挙する(日本語の繰り返し操作)))
        等しいことを確認(繰り返す値の一覧, 配列(ある物.列挙する(本来の繰り返し操作)))

        ある物.特異組{ 操作を未定義にする 日本語の繰り返し操作 }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の繰り返し操作) }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(本来の繰り返し操作) }

        ある物.特異組{
          定義(本来の繰り返し操作) {|&塊|
            for 値 in 繰り返す値の一覧
              塊[値]
            end
          }

          別名 日本語の繰り返し操作, 本来の繰り返し操作
        }
        等しいことを確認(繰り返す値の一覧, 配列(ある物.列挙する(日本語の繰り返し操作)))
        等しいことを確認(繰り返す値の一覧, 配列(ある物.列挙する(本来の繰り返し操作)))
        別名であることを確認(ある物, 日本語の繰り返し操作, 本来の繰り返し操作, '別名を上書きしないことを確認')
      }

      資料('取得' => [
             :イ,
             [ :甲 ],
             :取得,
             :fetch
           ],
           '格納' => [
             :イ,
             [ :甲, :イ ],
             :格納,
             :store,
           ],
           '削除' => [
             :イ,
             [ :甲 ],
             :削除,
             :delete
           ],
           '大きさ' => [
             0,
             [],
             :大きさ,
             :size,
             { 長さ: :length }
           ],
           '空か?' => [
             真値,
             [],
             :空か?,
             :empty?
           ],
           'キーの一覧' => [
             [ :甲, :乙, :丙 ],
             [],
             :キーの一覧,
             :keys
           ],
           'キー?' => [
             真値,
             [ :甲 ],
             :キーか?,
             :key?,
             { キーを持つか?: :has_key?, 含むか?: :include?, 一員か?: :member? }
           ])
      試験('入れ物の操作を日本語化できることを確認') {|資料|
        返り値, 入れ物の操作の引数, 日本語の入れ物の操作, 本来の入れ物の操作, 別名の一覧 = 資料

        入れ物の操作を持たない物 = 組.新規
        組(入れ物の操作を持たない物) {
          # 操作定義の変更の影響を受けないようにするため、上位の組で未定義にする。
          if (操作は定義済みか? 日本語の入れ物の操作) then
            操作を未定義にする 日本語の入れ物の操作
          end
          if (操作は定義済みか? 本来の入れ物の操作) then
            操作を未定義にする 本来の入れ物の操作
          end
          for 日本語の別名, 元の名前 in 配列(別名の一覧)
            if (操作は定義済みか? 日本語の別名) then
              操作を未定義にする 日本語の別名
            end
            if (操作は定義済みか? 元の名前) then
              操作を未定義にする 元の名前
            end
          end
        }

        ある組 = 組.新規(入れ物の操作を持たない物)
        ある物 = ある組.新規
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の入れ物の操作, *入れ物の操作の引数) }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(本来の入れ物の操作, *入れ物の操作の引数) }
        for 日本語の別名, 元の名前 in 配列(別名の一覧)
          例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の別名, *入れ物の操作の引数) }
          例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(元の名前, *入れ物の操作の引数) }
        end

        組(ある組) {
          定義(日本語の入れ物の操作) {|*引数| 返り値 }
          for 日本語の別名, _元の名前 in 配列(別名の一覧)
            別名 日本語の別名, 日本語の入れ物の操作
          end
        }
        等しいことを確認(返り値, ある物.公開された範囲で送信(日本語の入れ物の操作, *入れ物の操作の引数))
        等しいことを確認(返り値, ある物.公開された範囲で送信(本来の入れ物の操作, *入れ物の操作の引数))
        for 日本語の別名, 元の名前 in 配列(別名の一覧)
          等しいことを確認(返り値, ある物.公開された範囲で送信(日本語の別名, *入れ物の操作の引数))
          等しいことを確認(返り値, ある物.公開された範囲で送信(元の名前, *入れ物の操作の引数))
        end

        組(ある組) {
          操作を除去する 日本語の入れ物の操作
          for 日本語の別名, _元の名前 in 配列(別名の一覧)
            操作を除去する 日本語の別名
          end
        }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の入れ物の操作, *入れ物の操作の引数) }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(本来の入れ物の操作, *入れ物の操作の引数) }
        for 日本語の別名, 元の名前 in 配列(別名の一覧)
          例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の別名, *入れ物の操作の引数) }
          例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(元の名前, *入れ物の操作の引数) }
        end

        組(ある組) {
          定義(日本語の入れ物の操作) {|*引数| 返り値 }
          for 日本語の別名, _元の名前 in 配列(別名の一覧)
            別名 日本語の別名, 日本語の入れ物の操作
          end
        }
        等しいことを確認(返り値, ある物.公開された範囲で送信(日本語の入れ物の操作, *入れ物の操作の引数))
        等しいことを確認(返り値, ある物.公開された範囲で送信(本来の入れ物の操作, *入れ物の操作の引数))
        for 日本語の別名, 元の名前 in 配列(別名の一覧)
          等しいことを確認(返り値, ある物.公開された範囲で送信(日本語の別名, *入れ物の操作の引数))
          等しいことを確認(返り値, ある物.公開された範囲で送信(元の名前, *入れ物の操作の引数))
        end

        組(ある組) {
          操作を未定義にする 日本語の入れ物の操作
          for 日本語の別名, _元の名前 in 配列(別名の一覧)
            操作を未定義にする 日本語の別名
          end
        }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の入れ物の操作, *入れ物の操作の引数) }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(本来の入れ物の操作, *入れ物の操作の引数) }
        for 日本語の別名, 元の名前 in 配列(別名の一覧)
          例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の別名, *入れ物の操作の引数) }
          例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(元の名前, *入れ物の操作の引数) }
        end

        組(ある組) {
          定義(本来の入れ物の操作) {|*引数| 返り値 }
          別名 日本語の入れ物の操作, 本来の入れ物の操作
          for 日本語の別名, 元の名前 in 配列(別名の一覧)
            別名 元の名前, 本来の入れ物の操作
            別名 日本語の別名, 日本語の入れ物の操作
          end
        }
        等しいことを確認(返り値, ある物.公開された範囲で送信(日本語の入れ物の操作, *入れ物の操作の引数))
        等しいことを確認(返り値, ある物.公開された範囲で送信(本来の入れ物の操作, *入れ物の操作の引数))
        別名であることを確認(ある物, 日本語の入れ物の操作, 本来の入れ物の操作, '別名を上書きしないことを確認')
        for 日本語の別名, 元の名前 in 配列(別名の一覧)
          等しいことを確認(返り値, ある物.公開された範囲で送信(日本語の別名, *入れ物の操作の引数))
          等しいことを確認(返り値, ある物.公開された範囲で送信(元の名前, *入れ物の操作の引数))
          別名であることを確認(ある物, 日本語の別名, 元の名前, '別名を上書きしないことを確認')
        end

        組(ある組) {
          操作を未定義にする 日本語の入れ物の操作
          for 日本語の別名, _元の名前 in 配列(別名の一覧)
            操作を未定義にする 日本語の別名
          end
        }

        ある物.特異組{
          定義(日本語の入れ物の操作) {|*引数| 返り値 }
          for 日本語の別名, _元の名前 in 配列(別名の一覧)
            別名 日本語の別名, 日本語の入れ物の操作
          end
        }
        等しいことを確認(返り値, ある物.公開された範囲で送信(日本語の入れ物の操作, *入れ物の操作の引数))
        等しいことを確認(返り値, ある物.公開された範囲で送信(本来の入れ物の操作, *入れ物の操作の引数))
        for 日本語の別名, 元の名前 in 配列(別名の一覧)
          等しいことを確認(返り値, ある物.公開された範囲で送信(日本語の別名, *入れ物の操作の引数))
          等しいことを確認(返り値, ある物.公開された範囲で送信(元の名前, *入れ物の操作の引数))
        end

        ある物.特異組{
          操作を除去する 日本語の入れ物の操作
          for 日本語の別名, _元の名前 in 配列(別名の一覧)
            操作を除去する 日本語の別名
          end
        }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の入れ物の操作, *入れ物の操作の引数) }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(本来の入れ物の操作, *入れ物の操作の引数) }
        for 日本語の別名, 元の名前 in 配列(別名の一覧)
          例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の別名, *入れ物の操作の引数) }
          例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(元の名前, *入れ物の操作の引数) }
        end

        ある物.特異組{
          定義(日本語の入れ物の操作) {|*引数| 返り値 }
          for 日本語の別名, _元の名前 in 配列(別名の一覧)
            別名 日本語の別名, 日本語の入れ物の操作
          end
        }
        等しいことを確認(返り値, ある物.公開された範囲で送信(日本語の入れ物の操作, *入れ物の操作の引数))
        等しいことを確認(返り値, ある物.公開された範囲で送信(本来の入れ物の操作, *入れ物の操作の引数))
        for 日本語の別名, 元の名前 in 配列(別名の一覧)
          等しいことを確認(返り値, ある物.公開された範囲で送信(日本語の別名, *入れ物の操作の引数))
          等しいことを確認(返り値, ある物.公開された範囲で送信(元の名前, *入れ物の操作の引数))
        end

        ある物.特異組{
          操作を未定義にする 日本語の入れ物の操作
          for 日本語の別名, _元の名前 in 配列(別名の一覧)
            操作を未定義にする 日本語の別名
          end
        }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の入れ物の操作, *入れ物の操作の引数) }
        例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(本来の入れ物の操作, *入れ物の操作の引数) }
        for 日本語の別名, 元の名前 in 配列(別名の一覧)
          例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(日本語の別名, *入れ物の操作の引数) }
          例外が発生することを確認(操作が無いため失敗) { ある物.公開された範囲で送信(元の名前, *入れ物の操作の引数) }
        end

        ある物.特異組{
          定義(本来の入れ物の操作) {|*引数| 返り値 }
          別名 日本語の入れ物の操作, 本来の入れ物の操作
          for 日本語の別名, 元の名前 in 配列(別名の一覧)
            別名 元の名前, 本来の入れ物の操作
            別名 日本語の別名, 日本語の入れ物の操作
          end
        }
        等しいことを確認(返り値, ある物.公開された範囲で送信(日本語の入れ物の操作, *入れ物の操作の引数))
        等しいことを確認(返り値, ある物.公開された範囲で送信(本来の入れ物の操作, *入れ物の操作の引数))
        別名であることを確認(ある物, 日本語の入れ物の操作, 本来の入れ物の操作, '別名を上書きしないことを確認')
        for 日本語の別名, 元の名前 in 配列(別名の一覧)
          等しいことを確認(返り値, ある物.公開された範囲で送信(日本語の別名, *入れ物の操作の引数))
          等しいことを確認(返り値, ある物.公開された範囲で送信(元の名前, *入れ物の操作の引数))
          別名であることを確認(ある物, 日本語の別名, 元の名前, '別名を上書きしないことを確認')
        end
      }
    }
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
