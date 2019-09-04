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

  # 別名 :別名,                                      :alias_method
  別名 :原型の一覧,                                :ancestors
  別名 :属性,                                      :attr
  別名 :読み書き属性,                              :attr_accessor
  別名 :読み取り属性,                              :attr_reader
  別名 :書き込み属性,                              :attr_writer
  別名 :自動配置,                                  :autoload
  別名 :自動配置か?,                               :autoload?
  # 別名 :部で評価,                                  :module_eval
  # 別名 :組で評価,                                  :class_eval
  別名 :組の変数は定義済みか?,                     :class_variable_defined?
  別名 :組の変数の一覧,                            :class_variables
  # 別名 :定数は定義済みか?,                         :const_defined?
  # 別名 :定数を取得,                                :const_get
  別名 :不明な定数,                                :const_missing
  定義(:const_missing) {|名前| 不明な定数(名前) }
  # 別名 :定数を設定,                                :const_set
  別名 :定数の一覧,                                :constants
  # 別名 :定義,                                      :define_method
  別名 :凍結,                                      :freeze
  別名 :付加,                                      :include
  別名 :付加済みか?,                               :include?
  別名 :含まれる部の一覧,                          :included_modules
  別名 :名前,                                      :name
  別名 :生成物が持つ操作を取得,                    :instance_method
  別名 :生成物が持つ操作の一覧,                    :instance_methods
  別名 :操作は定義済みか?,                         :method_defined?
  別名 :付与,                                      :prepend
  別名 :組が持つ操作を秘密にする,                  :private_class_method
  別名 :生成物が持つ秘密の操作の一覧,              :private_instance_methods
  別名 :秘密の操作は定義済みか?,                   :private_method_defined?
  別名 :生成物が持つ保護された操作の一覧,          :protected_instance_methods
  別名 :保護された操作は定義済みか?,               :protected_method_defined?
  別名 :組が持つ操作を公開する,                    :public_class_method
  別名 :生成物が持つ公開された操作を取得,          :public_instance_method
  別名 :生成物が持つ公開された操作の一覧,          :public_instance_methods
  別名 :公開された操作は定義済みか?,               :public_method_defined?
  別名 :組の変数を除去する,                        :remove_class_variable
  別名 :操作を除去する,                            :remove_method
  別名 :操作を未定義にする,                        :undef_method

  別名 :機能を付加する,         :append_features
  別名 :部で実行,               :module_exec
  別名 :組で実行,               :class_exec
  別名 :組の変数を取得,         :class_variable_get
  別名 :組の変数を設定,         :class_variable_set
  別名 :定数を非推奨にする,     :deprecate_constant
  別名 :物を拡張する,           :extend_object
  別名 :拡張した時,             :extended
  定義(:extended) {|物| 拡張した時(物) }
  別名 :付加された時,           :included
  定義(:included) {|組または部| 付加された時(組または部) }
  別名 :操作が追加された時,     :method_added
  定義(:method_added) {|名前| 操作が追加された時(名前) }
  別名 :操作が除去された時,     :method_removed
  定義(:method_removed) {|名前| 操作が除去された時(名前) }
  別名 :操作が未定義にされた時, :method_undefined
  定義(:method_undefined) {|名前| 操作が未定義にされた時(名前) }
  # 別名 :部の関数,               :module_function
  別名 :機能を付与する,         :prepend_features
  別名 :付与された時,           :prepended
  定義(:prepended) {|組または部| 付与された時(組または部) }
  # 別名 :秘密,                   :private
  別名 :秘密の定数,             :private_constant
  別名 :保護,                   :protected
  別名 :公開,                   :public
  別名 :公開された定数,         :public_constant
  別名 :限定拡張,               :refine
  別名 :定数を除去する,         :remove_const
  別名 :特異組か?,              :singleton_class?
  別名 :限定拡張を使用,         :using

  秘密 :機能を付加する,
       :部で実行,
       :組で実行,
       :組の変数を取得,
       :組の変数を設定,
       :定数を非推奨にする,
       :物を拡張する,
       :拡張した時, :extended,
       :付加された時, :included,
       :操作が追加された時, :method_added,
       :操作が除去された時, :method_removed,
       :操作が未定義にされた時, :method_undefined,
       :機能を付与する,
       :付与された時, :prepended,
       :秘密の定数,
       :保護,
       :公開,
       :公開された定数,
       :限定拡張,
       :定数を除去する,
       :特異組か?,
       :限定拡張を使用
}

組(組) {
  操作を未定義にする :部の関数
  操作を未定義にする :物を拡張する
  操作を未定義にする :機能を付加する
  操作を未定義にする :機能を付与する
  操作を未定義にする :限定拡張

  特異組{
    別名 :新規, :new
  }

  別名 :生成, :allocate
  定義(:新規) {|*引数, &塊| new(*引数, &塊) } # 個別の組でnewを再定義するかもしれないので別名にしない
  別名 :原型, :superclass

  別名 :継承された時, :inherited
  定義(:inherited) {|継承した組| 継承された時(継承した組) }

  秘密 :継承された時, :inherited
}

組(物の土台) {
  別名 :__識別番号__, :__id__
  別名 :__送信__,     :__send__
  定義(:同一か?) {|他の物| equal?(他の物) } # equal?を再定義するかもしれないので別名にしない
  別名 :生成物で評価, :instance_eval
  別名 :生成物で実行, :instance_exec

  別名 :不明な操作,                 :method_missing
  定義(:method_missing) {|名前, *引数, &塊| 不明な操作(名前, *引数, &塊) }
  別名 :特異操作が追加された時,     :singleton_method_added
  定義(:singleton_method_added) {|名前| 特異操作が追加された時(名前) }
  別名 :特異操作が除去された時,     :singleton_method_removed
  定義(:singleton_method_removed) {|名前| 特異操作が除去された時(名前) }
  別名 :特異操作が未定義にされた時, :singleton_method_undefined
  定義(:singleton_method_undefined) {|名前| 特異操作が未定義にされた時(名前) }

  秘密 :不明な操作, :method_missing,
       :特異操作が追加された時, :singleton_method_added,
       :特異操作が除去された時, :singleton_method_removed,
       :特異操作が未定義にされた時, :singleton_method_undefined
}

組(物) {
  別名 :送信,                      :send
  別名 :生成元,                    :class
  別名 :複写,                      :clone
  別名 :複製,                      :dup
  別名 :特異操作の定義,            :define_singleton_method
  別名 :表示する,                  :display
  別名 :列挙する,                  :enum_for
  定義(:等しいか?) {|他の物| eql?(他の物) }                    # eql?を再定義するかもしれないので別名にしない
  別名 :拡張,                      :extend
  別名 :凍結する,                  :freeze
  別名 :凍結済みか?,               :frozen?
  定義(:ハッシュ値) { hash }                                   # hashを再定義するかもしれないので別名にしない
  定義(:検査) { inspect }                                      # inspectを再定義するかもしれないので別名にしない
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
  別名 :応答するか?,                 :respond_to?
  # 別名 :特異組,                    :singleton_class
  別名 :特異操作を取得,            :singleton_method
  別名 :特異操作の一覧,            :singleton_methods
  別名 :汚染させる,                :taint
  別名 :汚染されているか?,         :tainted?
  別名 :蛇口,                      :tap
  別名 :自分を渡す,                :yield_self
  別名 :文字列に変換,              :to_s
  別名 :汚染を除去する,            :untaint

  別名 :初期化,        :initialize
  別名 :不明な応答か?, :respond_to_missing?

  秘密 :初期化,
       :不明な応答か?
}

部(日本語化) {
  # initializeを直接上書きすると警告が出るので、間接的に上書きする。
  部(:物の初期化を日本語化する) {
    定義(:initialize) {|*引数, &塊| 初期化(*引数, &塊) }
    秘密 :initialize
  }

  # respond_to_missing?を直接上書きすると警告が出るので、間接的に上書きする。
  部(:物の不明な応答を日本語化する) {
    定義(:respond_to_missing?) {|名前, *引数| 不明な応答か?(名前, *引数) }
    秘密 :respond_to_missing?
  }

  組(物) {
    付与 物の初期化を日本語化する
    付与 物の不明な応答を日本語化する
  }
}

# 組の定義と被る変換関数を定義する。
部(日本語化) {
  定義(:配列) {|*引数|
    if (引数.empty?) then
      Array
    else
      Array(*引数)
    end
  }
  部の関数 :配列

  定義(:複素数) {|*引数|
    if (引数.empty?) then
      Complex
    else
      Complex(*引数)
    end
  }
  部の関数 :複素数

  定義(:不動小数点) {|*引数|
    if (引数.empty?) then
      Float
    else
      Float(*引数)
    end
  }
  部の関数 :浮動小数点

  定義(:連想配列) {|*引数|
    if (引数.empty?) then
      Hash
    else
      Hash(*引数)
    end
  }
  部の関数 :連想配列

  定義(:整数) {|*引数|
    if (引数.empty?) then
      Integer
    else
      Integer(*引数)
    end
  }
  部の関数 :整数

  定義(:有理数) {|*引数|
    if (引数.empty?) then
      Rational
    else
      Rational(*引数)
    end
  }
  部の関数 :有理数

  定義(:文字列) {|*引数|
    if (引数.empty?) then
      String
    else
      String(*引数)
    end
  }
  部の関数 :文字列
}

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
  別名 :呼び出し元の実行履歴の場所の一覧, :caller_locations
  別名 :補足,                             :catch
  別名 :評価する,                         :eval
  別名 :外部のプログラムを上書き実行する, :exec
  別名 :終了,                             :exit
  別名 :終了!,                            :exit!
  別名 :例外を発生,                       :raise
  別名 :プロセスを分岐,                   :fork
  別名 :整形,                             :format
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
  別名 :文字出力,                         :putc
  別名 :行出力,                           :puts
  別名 :乱数,                             :rand
  別名 :行を読み取る,                     :readline
  別名 :全行を読み取る,                   :readlines
  # 別名 :要求,                             :require
  # 別名 :相対位置で要求,                   :require_relative
  別名 :入出力を選択,                     :select
  別名 :追跡関数を設定,                   :set_trace_func
  別名 :待機,                             :sleep
  別名 :外部のプログラムを実行する,       :spawn
  別名 :乱数の種を設定,                   :srand
  別名 :システムコールを実行する,         :syscall
  別名 :外部のコマンドを実行する,         :system
  別名 :ファイル検査,                     :test
  別名 :脱出,                             :throw
  別名 :大域変数を追跡,                   :trace_var
  別名 :シグナルの補足,                   :trap
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
           :呼び出し元の実行履歴の場所の一覧,
           :補足,
           :評価する,
           :外部のプログラムを上書き実行する,
           :終了,
           :終了!,
           :例外を発生,
           :プロセスを分岐,
           :整形,
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
           :文字出力,
           :行出力,
           :乱数,
           :行を読み取る,
           :全行を読み取る,
           :入出力を選択,
           :追跡関数を設定,
           :待機,
           :外部のプログラムを実行する,
           :乱数の種を設定,
           :システムコールを実行する,
           :外部のコマンドを実行する,
           :ファイル検査,
           :脱出,
           :大域変数を追跡,
           :シグナルの補足,
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

部(日本語化) {
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

  変換操作の日本語化対応表 = {
    配列に変換:       :to_a,
    連想配列に変換:   :to_h,
    文字列に変換:     :to_s,
    記号に変換:       :to_sym,
    整数に変換:       :to_i,
    浮動小数点に変換: :to_f,
    有理数に変換:     :to_r,
    複素数に変換:     :to_c
  }.凍結する

  繰り返し操作の日本語化対応表 = {
    個別に:         :each,
    キー毎に:       :each_key,
    値毎に:         :each_value,
    組み合わせ毎に: :each_pair
  }.凍結する

  入れ物の操作の日本語化対応表 = {
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
  }.凍結する

  操作を日本語化できる部を作る = λ{|日本語化対応表|
    部(部.新規) {
      定義(:操作が追加された時) {|名前|
        super(名前)
        if (本来の名前 = 日本語化対応表[名前]) then
          unless (操作は定義済みか? 本来の名前) then
            定義(本来の名前) {|*引数, &塊|
              __送信__(名前, *引数, &塊)
            }
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

  日本語の定数 :変換操作を日本語化できる,     操作を日本語化できる部を作る[変換操作の日本語化対応表]
  日本語の定数 :繰り返し操作を日本語化できる, 操作を日本語化できる部を作る[繰り返し操作の日本語化対応表]
  日本語の定数 :入れ物の操作を日本語化できる, 操作を日本語化できる部を作る[入れ物の操作の日本語化対応表]

  組(部) {
    付与 変換操作を日本語化できる
    付与 繰り返し操作を日本語化できる
    付与 入れ物の操作を日本語化できる
  }

  物の操作を日本語化できる部を作る = λ{|日本語化対応表|
    部(部.新規) {
      定義(:特異操作が追加された時) {|名前|
        super(名前)
        if (本来の名前 = 日本語化対応表[名前]) then
          特異組{
            unless (操作は定義済みか? 本来の名前) then
              定義(本来の名前) {|*引数, &塊|
                __送信__(名前, *引数, &塊)
              }
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

  日本語の定数 :物の変換操作を日本語化できる,     物の操作を日本語化できる部を作る[変換操作の日本語化対応表]
  日本語の定数 :物の繰り返し操作を日本語化できる, 物の操作を日本語化できる部を作る[繰り返し操作の日本語化対応表]
  日本語の定数 :物の入れ物の操作を日本語化できる, 物の操作を日本語化できる部を作る[入れ物の操作の日本語化対応表]

  組(物) {
    付与 物の変換操作を日本語化できる
    付与 物の繰り返し操作を日本語化できる
    付与 物の入れ物の操作を日本語化できる
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
