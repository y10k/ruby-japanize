# -*- coding: utf-8 -*-

class Module
  alias 別名 alias_method

  別名 :定義,              :define_method
  別名 :定数は定義済みか?, :const_defined?
  別名 :定数を取得,        :const_get
  別名 :定数を設定,        :const_set
  別名 :部で評価,          :module_eval
  別名 :組で評価,          :class_eval
  別名 :秘密,              :private
  別名 :部の関数,          :module_function
end

module Kernel
  # requireはRubygemsが再定義するかもしれないので別名にしない
  定義(:要求) {|機能| require(機能) }
  部の関数 :要求

  # require_relativeはRubygemsが再定義するかもしれないので別名にしない
  定義(:相対位置で要求) {|相対位置の機能| require_relative(相対位置の機能) }
  部の関数 :相対位置で要求
end

class Object
  定義(:特異組) {|&塊|
    if (塊) then
      特異組の定義(&塊)
    else
      singleton_class
    end
  }

  定義(:特異組の定義) {|&塊|
    特異組.組で評価(&塊)
  }
  秘密 :特異組の定義
end

module JA
end
include JA

Japanize = JA unless (defined? Japanize)
Japanize::TOP_LEVEL = self

module Japanize
  定義(:自分) { self }
  秘密 :自分

  定義(:最上位) { TOP_LEVEL }

  定義(:日本語の定数) {|名前, *引数, &塊|
    if (引数.empty? && ! 塊) then
      raise ArgumentError, '定数値か手続きが必要です'
    end

    if (! 引数.empty? && 塊) then
      raise ArgumentError, '定数値と手続きを同時に渡してはいけません'
    end

    unless (引数.empty?) then
      if (引数.length != 1) then
        raise ArgumentError, "引数の数が不正です(与えられた引数は#{引数.length}個, 期待される引数は1個)"
      end
      値 = 引数[0]
    end

    if (塊) then
      unless (塊.parameters.empty?) then
        raise ArgumentError, '手続きは引数を受け取るべきではありません'
      end
    end

    if (自分 == Japanize || 自分 == Japanize::最上位) then
      定数の名前空間 = Japanize
      操作の名前空間 = Japanize
    else
      定数の名前空間 = 自分
      操作の名前空間 = 自分.特異組
    end

    定数 = "JA#{名前}".to_sym
    if (塊) then
      定数の名前空間.定数を設定(定数, 塊)
      操作の名前空間.定義(名前, &塊)
    else
      定数の名前空間.定数を設定(定数, 値)
      操作の名前空間.定義(名前) { 値 }
    end

    値
  }

  最上位.特異組{
    定義(:定義) {|名前, &塊|
      戻り値 = define_method(名前, &塊)
      秘密 名前
      戻り値
    }

    別名 :付加,           :include
    別名 :秘密,           :private
    別名 :公開,           :public
    別名 :限定拡張を使用, :using
  }

  日本語の定数 :日本語化, ::Japanize
  日本語の定数 :核,       ::Kernel
  日本語の定数 :物,       ::Object
  日本語の定数 :記号,     ::Symbol
  日本語の定数 :文字列,   ::String

  JA部 = ::Module
  JA組 = ::Class

  定義(:部) {|*引数, &塊|
    if (引数.empty? && ! 塊) then
      ::Module
    else
      部の定義(*引数, &塊)
    end
  }

  定義(:組) {|*引数, **名前付き引数, &塊|
    if (引数.empty? && 名前付き引数.empty? && ! 塊) then
      ::Class
    else
      組の定義(*引数, **名前付き引数, &塊)
    end
  }

  定義(:部の定義) {|ある部, &塊|
    case (ある部)
    when 記号, 文字列
      名前 = ある部
      定数名 = "JA#{名前}".to_sym

      if (自分 == 日本語化 || 自分 == 日本語化::最上位) then
        定数の名前空間 = 日本語化
        操作の名前空間 = 日本語化
      else
        定数の名前空間 = 自分
        操作の名前空間 = 自分.特異組
      end

      if (定数の名前空間.定数は定義済みか? 定数名) then
        ある部 = 定数の名前空間.定数を取得(定数名)
      else
        ある部 = 部.new
        定数の名前空間.定数を設定(定数名, ある部)
        操作の名前空間.定義(名前) { ある部 }
      end
    end

    ある部.instance_of? 部 or raise TypeError, "#{ある部} は #{部} ではありません"
    ある部.部で評価(&塊)
  }
  秘密 :部の定義

  定義(:組の定義) {|ある組, 原型: nil, &塊|
    原型.instance_of? 組 or raise TypeError, "#{原型} は #{組} ではありせん" if 原型
    case (ある組)
    when 記号, 文字列
      名前 = ある組
      定数名 = "JA#{名前}".to_sym

      if (自分 == 日本語化 || 自分 == 日本語化::最上位) then
        定数の名前空間 = 日本語化
        操作の名前空間 = 日本語化
      else
        定数の名前空間 = 自分
        操作の名前空間 = 自分.特異組
      end

      if (定数の名前空間.定数は定義済みか? 定数名) then
        ある組 = 定数の名前空間.定数を取得(定数名)
      else
        ある組 = 組.new(原型 || 物)
        定数の名前空間.定数を設定(定数名, ある組)
        操作の名前空間.定義(名前) { ある組 }
      end
    end

    ある組.instance_of? 組 or raise TypeError, "#{ある組} は #{組} ではありません"
    if (原型 && 原型 != ある組.superclass) then
      raise TypeError, "#{ある組} の原型として #{原型} は不適当です"
    end
    ある組.組で評価(&塊)
  }
  秘密 :組の定義

  バージョンが2_7以上 = (RUBY_VERSION.split('.').map(&:to_i) <=> [ 2, 7 ]) >= 0
  定義(:_バージョンが2_7以上か?) { バージョンが2_7以上 }
  部の関数 :_バージョンが2_7以上か?
end

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
