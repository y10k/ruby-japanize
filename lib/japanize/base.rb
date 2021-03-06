# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/names'

組(部) {
  特異組{
    別名 :定数の一覧,       :constants
    別名 :入れ子,           :nesting
    別名 :新規,             :new
    別名 :使用中の部の一覧, :used_modules
  }

  # 別名 :別名,                           :alias_method      # japanize/coreで定義済み
  別名 :原型の一覧,                       :ancestors
  別名 :属性,                             :attr
  別名 :読み書き属性,                     :attr_accessor
  別名 :読み取り属性,                     :attr_reader
  別名 :書き込み属性,                     :attr_writer
  別名 :自動配置,                         :autoload
  別名 :自動配置か?,                      :autoload?
  # 別名 :部で評価,                       :module_eval       # japanize/coreで定義済み
  # 別名 :組で評価,                       :class_eval        # japanize/coreで定義済み
  別名 :部で実行,                         :module_exec
  別名 :組で実行,                         :class_exec
  別名 :組の変数は定義済みか?,            :class_variable_defined?
  別名 :組の変数を取得,                   :class_variable_get
  別名 :組の変数を設定,                   :class_variable_set
  別名 :組の変数の一覧,                   :class_variables
  # 別名 :定数は定義済みか?,              :const_defined?    # japanize/coreで定義済み
  # 別名 :定数を取得,                     :const_get         # japanize/coreで定義済み
  別名 :不明な定数,                       :const_missing
  定義(:const_missing) {|名前| 不明な定数(名前) }
  # 別名 :定数を設定,                     :const_set         # japanize/coreで定義済み
  別名 :定数が定義された場所,             :const_source_location if (method_defined? :const_source_location, 偽値)
  別名 :定数の一覧,                       :constants
  # 別名 :定義,                           :define_method     # japanize/coreで定義済み
  別名 :定数を非推奨にする,               :deprecate_constant
  別名 :付加,                             :include
  別名 :付加済みか?,                      :include?
  別名 :含まれる部の一覧,                 :included_modules
  別名 :名前,                             :name
  別名 :生成物が持つ操作を取得,           :instance_method
  別名 :生成物が持つ操作の一覧,           :instance_methods
  別名 :操作は定義済みか?,                :method_defined?
  別名 :付与,                             :prepend
  別名 :組が持つ操作を秘密にする,         :private_class_method
  別名 :秘密の定数,                       :private_constant
  別名 :生成物が持つ秘密の操作の一覧,     :private_instance_methods
  別名 :秘密の操作は定義済みか?,          :private_method_defined?
  別名 :生成物が持つ保護された操作の一覧, :protected_instance_methods
  別名 :保護された操作は定義済みか?,      :protected_method_defined?
  別名 :組が持つ操作を公開する,           :public_class_method
  別名 :公開された定数,                   :public_constant
  別名 :生成物が持つ公開された操作を取得, :public_instance_method
  別名 :生成物が持つ公開された操作の一覧, :public_instance_methods
  別名 :公開された操作は定義済みか?,      :public_method_defined?
  別名 :組の変数を除去する,               :remove_class_variable
  別名 :操作を除去する,                   :remove_method
  別名 :特異組か?,                        :singleton_class?
  別名 :操作を未定義にする,               :undef_method

  別名 :機能を付加する,          :append_features
  別名 :物を拡張する,            :extend_object
  別名 :拡張した時,              :extended
  定義(:extended) {|物| 拡張した時(物) }
  別名 :付加された時,            :included
  定義(:included) {|組または部| 付加された時(組または部) }
  別名 :操作が追加された時,      :method_added
  定義(:method_added) {|名前| 操作が追加された時(名前) }
  別名 :操作が除去された時,      :method_removed
  定義(:method_removed) {|名前| 操作が除去された時(名前) }
  別名 :操作が未定義にされた時,  :method_undefined
  定義(:method_undefined) {|名前| 操作が未定義にされた時(名前) }
  # 別名 :部の関数,              :module_function    # japanize/coreで定義済み
  別名 :機能を付与する,          :prepend_features
  別名 :付与された時,            :prepended
  定義(:prepended) {|組または部| 付与された時(組または部) }
  # 別名 :秘密,                  :private            # japanize/coreで定義済み
  別名 :保護,                    :protected
  別名 :公開,                    :public
  別名 :限定拡張,                :refine
  別名 :定数を除去する,          :remove_const
  別名 :ruby2互換の名前付き引数, :ruby2_keywords if (秘密の操作は定義済みか? :ruby2_keywords, 偽値)
  別名 :限定拡張を使用,          :using

  秘密 :機能を付加する,
       :物を拡張する,
       :拡張した時, :extended,
       :付加された時, :included,
       :操作が追加された時, :method_added,
       :操作が除去された時, :method_removed,
       :操作が未定義にされた時, :method_undefined,
       :機能を付与する,
       :付与された時, :prepended,
       :保護,
       :公開,
       :限定拡張,
       :定数を除去する,
       :限定拡張を使用

  秘密 :ruby2互換の名前付き引数 if (秘密の操作は定義済みか? :ruby2_keywords, 偽値)

  定義(:日本語の定数を移譲) {|移譲先の部, 名前, *名前の一覧, 上書き: 偽値|
    名前の一覧 = [ 名前 ] + 名前の一覧

    日本語の定数を移譲できる部 = 部.新規
    名前の一覧.each{|定数名|    # スコープを作るためブロックにする
      移譲先の操作 = 移譲先の部.公開された操作を取得(定数名)
      unless (移譲先の操作.parameters.empty?) then
        例外を発生 名前解決に失敗, "定数ではありません: #{定数名}"
      end
      日本語の定数を移譲できる部.定義(定数名) {
        移譲先の部.公開された範囲で送信(定数名)
      }
    }

    特異組{
      if (上書き) then
        付与 日本語の定数を移譲できる部
      else
        付加 日本語の定数を移譲できる部
      end
    }

    自分
  }

  定義(:日本語の定数を付加できること) {|名前, *名前の一覧|
    名前の一覧 = [ 名前 ] + 名前の一覧

    日本語の定数を付加できる部 = 部.新規
    部(日本語の定数を付加できる部) {
      定義(:付加された時) {|組または部|
        super(組または部)
        組または部.日本語の定数を移譲(自分, *名前の一覧, 上書き: 偽値)
      }

      定義(:付与された時) {|組または部|
        super(組または部)
        組または部.日本語の定数を移譲(自分, *名前の一覧, 上書き: 真値)
      }
    }

    拡張 日本語の定数を付加できる部
  }
}

組(組) {
  操作を未定義にする :部の関数
  操作を未定義にする :物を拡張する
  操作を未定義にする :機能を付加する
  操作を未定義にする :機能を付与する
  操作を未定義にする :限定拡張
  操作を未定義にする :日本語の定数を付加できること

  特異組{
    別名 :新規, :new
  }

  別名 :生成, :allocate
  `定義 新規(...); new(...)`
  別名 :原型, :superclass

  別名 :継承された時, :inherited
  定義(:inherited) {|継承した組| 継承された時(継承した組) }

  秘密 :継承された時, :inherited
}

組(物の土台) {
  別名 :__識別番号__, :__id__
  別名 :__送信__,     :__send__
  定義(:同一か?) {|他の物| equal?(他の物) } # equal?を継承先で再定義するかもしれないので別名にしない
  別名 :生成物で評価, :instance_eval
  別名 :生成物で実行, :instance_exec

  別名 :初期化,                     :initialize
  別名 :不明な操作,                 :method_missing
  `定義 method_missing(...); 不明な操作(...)`
  別名 :特異操作が追加された時,     :singleton_method_added
  定義(:singleton_method_added) {|名前| 特異操作が追加された時(名前) }
  別名 :特異操作が除去された時,     :singleton_method_removed
  定義(:singleton_method_removed) {|名前| 特異操作が除去された時(名前) }
  別名 :特異操作が未定義にされた時, :singleton_method_undefined
  定義(:singleton_method_undefined) {|名前| 特異操作が未定義にされた時(名前) }

  秘密 :初期化,
       :不明な操作, :method_missing,
       :特異操作が追加された時, :singleton_method_added,
       :特異操作が除去された時, :singleton_method_removed,
       :特異操作が未定義にされた時, :singleton_method_undefined
}

# 物の操作は実際は核で定義されている
部(核) {
  別名 :送信,                      :send
  別名 :生成元,                    :class
  # 別名 :複写,                    :clone                # cloneを継承先で再定義するかもしれないので別名にしない
  # 別名 :複製,                    :dup                  # dupを継承先で再定義するかもしれないので別名にしない
  別名 :特異操作の定義,            :define_singleton_method
  別名 :表示する,                  :display
  別名 :列挙に変換,                :to_enum
  別名 :列挙する,                  :enum_for
  # 別名 :等しいか?,               :eql?                 # eql?を継承先で再定義するかもしれないので別名にしない
  別名 :拡張,                      :extend
  別名 :凍結済みか?,               :frozen?
  # 別名 :ハッシュ値,              :hash                 # hashを継承先で再定義するかもしれないので別名にしない
  # 別名 :検査,                    :inspect              # inspectを継承先で再定義するかもしれないので別名にしない
  別名 :生成物か?,                 :instance_of?
  別名 :生成物の変数は定義済みか?, :instance_variable_defined?
  別名 :生成物の変数を取得,        :instance_variable_get
  別名 :生成物の変数を設定,        :instance_variable_set
  別名 :生成物の変数の一覧,        :instance_variables
  別名 :一種か?,                   :is_a?
  別名 :自分自身,                  :itself
  別名 :操作を取得,                :method
  別名 :操作の一覧,                :methods
  別名 :無値か?,                   :nil?
  別名 :物の識別番号,              :object_id
  別名 :秘密の操作の一覧,          :private_methods
  別名 :保護された操作の一覧,      :protected_methods
  別名 :公開された操作を取得,      :public_method
  別名 :公開された操作の一覧,      :public_methods
  別名 :公開された範囲で送信,      :public_send
  別名 :生成物の変数を除去する,    :remove_instance_variable
  別名 :応答するか?,               :respond_to?
  # 別名 :特異組,                  :singleton_class      # japanize/coreで定義済み
  別名 :特異操作を取得,            :singleton_method
  別名 :特異操作の一覧,            :singleton_methods
  別名 :汚染させる,                :taint
  別名 :汚染されているか?,         :tainted?
  別名 :蛇口,                      :tap
  別名 :それから,                  :then
  別名 :自分を委ねる,              :yield_self
  # 別名 :文字列に変換,              :to_s               # to_sを継承先で再定義するかもしれないので別名にしない
  別名 :汚染を除去する,            :untaint

  別名 :不明な応答か?, :respond_to_missing?

  秘密 :不明な応答か?
}

組(物) {
  定義(:等しいか?) {|他の物| eql?(他の物) }                                                    # eql?を継承先で再定義するかもしれないので別名にしない
  定義(:凍結する) { freeze }                                                                   # freezeを継承先で再定義するかもしれないので別名にしない
  定義(:ハッシュ値) { hash }                                                                   # hashを継承先で再定義するかもしれないので別名にしない
  `定義 複写(...);           clone(...)`
  `定義 複製(...);             dup(...)`
  `定義 検査(...);         inspect(...)`
  `定義 文字列に変換(...);    to_s(...)`
}

部(日本語化) {
  # initializeを直接上書きすると警告が出るので、間接的に上書きする。
  部(:物の初期化を日本語化する) {
    `定義 initialize(...); 初期化(...)`
    秘密 :initialize
  }

  # respond_to_missing?を直接上書きすると警告が出るので、間接的に上書きする。
  部(:物の不明な応答を日本語化する) {
    `定義 respond_to_missing?(...); 不明な応答か?(...)`
    秘密 :respond_to_missing?
  }

  組(物) {
    付与 物の初期化を日本語化する
    付与 物の不明な応答を日本語化する
  }
}

# 組の定義と被る変換関数を定義する。
部(核) {
  部(:変換関数の日本語化) {
    if (_バージョンが2_7以上か?) then
      定義(:配列) {|*引数, **名前付き引数, &塊|
        if (引数.empty? && 名前付き引数.empty? && ! 塊) then
          Array
        else
          Array(*引数, **名前付き引数, &塊)
        end
      }
    else
      定義(:配列) {|*引数, &塊|
        if (引数.empty? &&! 塊) then
          Array
        else
          Array(*引数, &塊)
        end
      }
    end

    if (_バージョンが2_7以上か?) then
      定義(:複素数) {|*引数, **名前付き引数, &塊|
        if (引数.empty? && 名前付き引数.empty? && ! 塊) then
          Complex
        else
          Complex(*引数, **名前付き引数, &塊)
        end
      }
    else
      定義(:複素数) {|*引数, &塊|
        if (引数.empty? && ! 塊) then
          Complex
        else
          Complex(*引数, &塊)
        end
      }
    end

    if (_バージョンが2_7以上か?) then
      定義(:浮動小数点) {|*引数, **名前付き引数, &塊|
        if (引数.empty? && 名前付き引数.empty? && ! 塊) then
          Float
        else
          Float(*引数, **名前付き引数, &塊)
        end
      }
    else
      定義(:浮動小数点) {|*引数, &塊|
        if (引数.empty? && ! 塊) then
          Float
        else
          Float(*引数, &塊)
        end
      }
    end

    if (_バージョンが2_7以上か?) then
      定義(:連想配列) {|*引数, **名前付き引数, &塊|
        if (引数.empty? && 名前付き引数.empty? && ! 塊) then
          Hash
        else
          Hash(*引数, **名前付き引数, &塊)
        end
      }
    else
      定義(:連想配列) {|*引数, &塊|
        if (引数.empty? && ! 塊) then
          Hash
        else
          Hash(*引数, &塊)
        end
      }
    end

    if (_バージョンが2_7以上か?) then
      定義(:整数) {|*引数, **名前付き引数, &塊|
        if (引数.empty? && 名前付き引数.empty? && ! 塊) then
          Integer
        else
          Integer(*引数, **名前付き引数, &塊)
        end
      }
    else
      定義(:整数) {|*引数, &塊|
        if (引数.empty? &&! 塊) then
          Integer
        else
          Integer(*引数, &塊)
        end
      }
    end

    if (_バージョンが2_7以上か?) then
      定義(:有理数) {|*引数, **名前付き引数, &塊|
        if (引数.empty? && 名前付き引数.empty? && ! 塊) then
          Rational
        else
          Rational(*引数, **名前付き引数, &塊)
        end
      }
    else
      定義(:有理数) {|*引数, &塊|
        if (引数.empty? && ! 塊) then
          Rational
        else
          Rational(*引数, &塊)
        end
      }
    end

    if (_バージョンが2_7以上か?) then
      定義(:文字列) {|*引数, **名前付き引数, &塊|
        if (引数.empty? && 名前付き引数.empty? && ! 塊) then
          String
        else
          String(*引数, **名前付き引数, &塊)
        end
      }
    else
      定義(:文字列) {|*引数, &塊|
        if (引数.empty? && ! 塊) then
          String
        else
          String(*引数, &塊)
        end
      }
    end
  }
  拡張 変換関数の日本語化
}

部(日本語化) {
  拡張 核::変換関数の日本語化
  付与 核::変換関数の日本語化
}
付加 核::変換関数の日本語化

部(核) {
  別名 :__呼び出し先__,                   :__callee__
  別名 :__ディレクトリ__,                 :__dir__
  別名 :__操作名__,                       :__method__
  別名 :中断,                             :abort
  別名 :終了時に実行,                     :at_exit
  別名 :自動配置,                         :autoload
  別名 :自動配置か?,                      :autoload?
  別名 :束縛を取得,                       :binding
  別名 :操作に手続きが与えられているか?,  :block_given?
  別名 :呼び出し元,                       :caller
  別名 :呼び出し元の場所の一覧,           :caller_locations
  別名 :捕捉,                             :catch
  別名 :評価,                             :eval
  別名 :外部のプログラムを上書き実行する, :exec
  別名 :終了,                             :exit
  別名 :終了!,                            :exit!
  別名 :例外を発生,                       :raise
  別名 :プロセスを分岐,                   :fork
  別名 :整形,                             :format
  別名 :文字列に整形,                     :sprintf
  別名 :行を取得,                         :gets
  別名 :大域変数の一覧,                   :global_variables
  別名 :手続き,                           :proc
  別名 :λ,                               :lambda
  別名 :配置,                             :load
  別名 :局所変数の一覧,                   :local_variables
  別名 :循環,                             :loop
  別名 :ファイルを開く,                   :open
  別名 :点検,                             :p
  別名 :目視点検,                         :pp
  別名 :印字,                             :print
  別名 :整形して印字,                     :printf
  別名 :文字を出力,                       :putc
  別名 :行を出力,                         :puts
  別名 :乱数,                             :rand
  別名 :行を読む,                         :readline
  別名 :全行を読む,                       :readlines
  # 別名 :要求,                           :require             # japanize/coreで定義済み
  # 別名 :相対位置で要求,                 :require_relative    # japanize/coreで定義済み
  別名 :入出力を選択,                     :select
  別名 :追跡関数を設定,                   :set_trace_func
  別名 :休止,                             :sleep
  別名 :外部のプログラムを実行する,       :spawn
  別名 :乱数の種を設定,                   :srand
  別名 :システムコールを実行する,         :syscall
  別名 :外部のコマンドを実行する,         :system
  別名 :ファイルを検査,                   :test
  別名 :脱出,                             :throw
  別名 :大域変数を追跡,                   :trace_var
  別名 :シグナルの捕捉,                   :trap
  別名 :大域変数の追跡を解除,             :untrace_var
  別名 :警告,                             :warn

  部の関数 :__呼び出し先__,
           :__ディレクトリ__,
           :__操作名__,
           :中断,
           :終了時に実行,
           :自動配置,
           :自動配置か?,
           :束縛を取得,
           :操作に手続きが与えられているか?,
           :呼び出し元,
           :呼び出し元の場所の一覧,
           :捕捉,
           :評価,
           :外部のプログラムを上書き実行する,
           :終了,
           :終了!,
           :例外を発生,
           :プロセスを分岐,
           :整形,
           :文字列に整形,
           :行を取得,
           :大域変数の一覧,
           :手続き,
           :λ,
           :配置,
           :局所変数の一覧,
           :循環,
           :ファイルを開く,
           :点検,
           :目視点検,
           :印字,
           :整形して印字,
           :文字を出力,
           :行を出力,
           :乱数,
           :行を読む,
           :全行を読む,
           :入出力を選択,
           :追跡関数を設定,
           :休止,
           :外部のプログラムを実行する,
           :乱数の種を設定,
           :システムコールを実行する,
           :外部のコマンドを実行する,
           :ファイルを検査,
           :脱出,
           :大域変数を追跡,
           :シグナルの捕捉,
           :大域変数の追跡を解除,
           :警告

  # コマンドラインオプションで -p または -n を指定した時のみ定義される。
  [ [ :末尾を食べる,   :chomp ],
    [ :末尾を切り落す, :chop ],
    [ :全置換,         :gsub ],
    [ :置換,           :sub ],
  ].each do |日本語の操作, 元の操作|
    if (操作は定義済みか? 元の操作) then
      別名 日本語の操作, 元の操作
      部の関数 日本語の操作
    end
  end
}

組(無値の組) {
  別名 :無値か?,          :nil?
  別名 :有理化,           :rationalize
  別名 :配列に変換,       :to_a
  別名 :複素数に変換,     :to_c
  別名 :浮動小数点に変換, :to_f
  別名 :連想配列に変換,   :to_h
  別名 :整数に変換,       :to_i
  別名 :有理数に変換,     :to_r
  # 別名 :文字列に変換,   :to_s    # 物で定義済み
}

組(例外) {
  特異組{
    別名 :例外を生成,            :exception
    別名 :端末に向かっているか?, :to_tty?
  }

  別名 :呼び出し履歴,             :backtrace
  別名 :呼び出し履歴の場所の一覧, :backtrace_locations
  別名 :起因,                     :cause
  別名 :例外を生成,               :exception
  別名 :完全な伝文,               :full_message
  # 別名 :検査,                   :inspect    # 物で定義済み
  別名 :伝文,                     :message
  # 別名 :文字列に変換,           :to_s       # 物で定義済み
  別名 :応答するか?,              :respond_to?
  別名 :呼び出し履歴を設定,       :set_backtrace
}

部(日本語化) {
  部(:不明な操作の呼び出し履歴を消す) {
    `定義 不明な操作(...)
       begin
         super
       rescue ::JA::名前解決に失敗 => ある例外
         # 物#不明な操作 と Object#method_missing の履歴を消して、元の場所で例外が発生したように見せる
         ある例外.呼び出し履歴.shift(2)
         ある例外.呼び出し履歴の場所の一覧.shift(2)
         ::JA::核.例外を発生 ある例外
       end
    `
  }

  組(物の土台) {
    付与 不明な操作の呼び出し履歴を消す
  }

  部(:初期化を秘密にする) {
    定義(:操作が追加された時) {|名前|
      super(名前)
      if (名前 == :初期化) then
        秘密 :初期化
      end
    }
    秘密 :操作が追加された時
  }

  組(部) {
    付与 初期化を秘密にする
  }

  部(:操作の日本語化) {
    日本語の定数 :変換操作の日本語化対応表, {
                   検査:             :inspect,
                   配列に変換:       :to_a,
                   連想配列に変換:   :to_h,
                   文字列に変換:     :to_s,
                   記号に変換:       :to_sym,
                   整数に変換:       :to_i,
                   浮動小数点に変換: :to_f,
                   有理数に変換:     :to_r,
                   複素数に変換:     :to_c
                 }

    日本語の定数 :繰り返し操作の日本語化対応表, {
                   個別に:   :each,
                   キー毎に: :each_key,
                   値毎に:   :each_value,
                   対毎に:   :each_pair
                 }

    日本語の定数 :入れ物の操作の日本語化対応表, {
                   取得:          :fetch,
                   格納:          :store,
                   削除:          :delete,
                   大きさ:        :size,
                   長さ:          :length,
                   空か?:         :empty?,
                   キーの一覧:    :keys,
                   キーか?:       :key?,
                   キーを持つか?: :has_key?,
                   含むか?:       :include?,
                   一員か?:       :member?
                 }

    日本語の定数 :物を分解する操作の日本語化対応表, {
                   分解:       :deconstruct,
                   キーで分解: :deconstruct_keys
                 }

    特異操作の定義(:操作を日本語化できる部を作る) {|日本語化対応表|
      部(部.新規) {
        定義(:操作が追加された時) {|名前|
          super(名前)
          if (本来の名前 = 日本語化対応表[名前]) then
            if (! (操作は定義済みか? 本来の名前) || (生成物が持つ操作を取得(名前) != 生成物が持つ操作を取得(本来の名前))) then
              `定義 #{本来の名前}([...]); __送信__(:#{名前}, [...])`
            end
          end
        }
        秘密 :操作が追加された時

        定義(:操作が除去された時) {|名前|
          super(名前)
          if (本来の名前 = 日本語化対応表[名前]) then
            if (操作は定義済みか? 本来の名前) then
              操作を除去する(本来の名前)
            end
          end
        }
        秘密 :操作が除去された時

        定義(:操作が未定義にされた時) {|名前|
          super(名前)
          if (本来の名前 = 日本語化対応表[名前]) then
            if (操作は定義済みか? 本来の名前) then
              操作を未定義にする(本来の名前)
            end
          end
        }
        秘密 :操作が未定義にされた時
      }
    }

    特異操作の定義(:物の操作を日本語化できる部を作る) {|日本語化対応表|
      部(部.新規) {
        定義(:特異操作が追加された時) {|名前|
          super(名前)
          if (本来の名前 = 日本語化対応表[名前]) then
            特異組{
              if (! (操作は定義済みか? 本来の名前) || (生成物が持つ操作を取得(名前) != 生成物が持つ操作を取得(本来の名前))) then
                `定義 #{本来の名前}([...]); __送信__(:#{名前}, [...])`
              end
            }
          end
        }
        秘密 :特異操作が追加された時

        定義(:特異操作が除去された時) {|名前|
          super(名前)
          if (本来の名前 = 日本語化対応表[名前]) then
            特異組{
              if (操作は定義済みか? 本来の名前) then
                操作を除去する(本来の名前)
              end
            }
          end
        }
        秘密 :特異操作が除去された時

        定義(:特異操作が未定義にされた時) {|名前|
          super(名前)
          if (本来の名前 = 日本語化対応表[名前]) then
            特異組{
              if (操作は定義済みか? 本来の名前) then
                操作を未定義にする(本来の名前)
              end
            }
          end
        }
        秘密 :特異操作が未定義にされた時
      }
    }

    日本語の定数 :変換操作を日本語化できる,         操作を日本語化できる部を作る(変換操作の日本語化対応表)
    日本語の定数 :繰り返し操作を日本語化できる,     操作を日本語化できる部を作る(繰り返し操作の日本語化対応表)
    日本語の定数 :入れ物の操作を日本語化できる,     操作を日本語化できる部を作る(入れ物の操作の日本語化対応表)
    日本語の定数 :物を分解する操作を日本語化できる, 操作を日本語化できる部を作る(物を分解する操作の日本語化対応表)

    日本語の定数 :物の変換操作を日本語化できる,         物の操作を日本語化できる部を作る(変換操作の日本語化対応表)
    日本語の定数 :物の繰り返し操作を日本語化できる,     物の操作を日本語化できる部を作る(繰り返し操作の日本語化対応表)
    日本語の定数 :物の入れ物の操作を日本語化できる,     物の操作を日本語化できる部を作る(入れ物の操作の日本語化対応表)
    日本語の定数 :物の物を分解する操作を日本語化できる, 物の操作を日本語化できる部を作る(物を分解する操作の日本語化対応表)
  }

  組(部) {
    付与 操作の日本語化::変換操作を日本語化できる
    付与 操作の日本語化::繰り返し操作を日本語化できる
    付与 操作の日本語化::入れ物の操作を日本語化できる
    付与 操作の日本語化::物を分解する操作を日本語化できる
  }

  組(物) {
    付与 操作の日本語化::物の変換操作を日本語化できる
    付与 操作の日本語化::物の繰り返し操作を日本語化できる
    付与 操作の日本語化::物の入れ物の操作を日本語化できる
    付与 操作の日本語化::物の物を分解する操作を日本語化できる
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
