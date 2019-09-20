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
    if (引数.empty?) then
      unless (塊) then
        raise ArgumentError, '定数値か手続きが必要です'
      end
      unless (塊.parameters.empty?) then
        raise ArgumentError, '手続きは引数を受け取るべきではありません'
      end
    else
      if (塊) then
        raise ArgumentError, '定数値と手続きを同時に渡してはいけません'
      end
      if (引数.length != 1) then
        raise ArgumentError, "引数の数が不正です(与えられた引数は#{引数.length}個, 期待される引数は1個)"
      end
      値 = 引数[0]
    end

    定数 = "JA#{名前}".to_sym
    if (自分 == Japanize || 自分 ==  Japanize::最上位) then
      if (塊) then
        Japanize.定数を設定(定数, 塊)
        Japanize.定義(名前, &塊)
      else
        Japanize.定数を設定(定数, 値)
        Japanize.定義(名前) { 値 }
      end
    else
      if (塊) then
        定数を設定(定数, 塊)
        特異組.定義(名前, &塊)
      else
        定数を設定(定数, 値)
        特異組.定義(名前) { 値 }
      end
    end

    値
  }

  最上位.特異組{
    定義(:定義) {|名前, &塊|
      define_method(名前, &塊)
      private 名前
    }

    別名 :付加,           :include
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
    if (塊) then
      部の定義(*引数, &塊)
    else
      ::Module
    end
  }

  定義(:組) {|*引数, &塊|
    if (塊) then
      組の定義(*引数, &塊)
    else
      ::Class
    end
  }

  定義(:部の定義) {|ある部, &塊|
    case (ある部)
    when 記号, 文字列
      名前 = ある部
      定数名 = "JA#{名前}".to_sym
      if (自分 == 日本語化 || 自分 == 日本語化::最上位) then
        if (日本語化.定数は定義済みか? 定数名) then
          ある部 = 日本語化.定数を取得(定数名)
          ある部.instance_of? 部 or raise TypeError, "#{ある部} は #{部} ではありません"
        else
          ある部 = 部.new
          日本語化.定数を設定(定数名, ある部)
          日本語化.定義(名前) { ある部 }
        end
      else
        if (定数は定義済みか? 定数名) then
          ある部 = 定数を取得(定数名)
          ある部.instance_of? 部 or raise TypeError, "#{ある部} は #{部} ではありません"
        else
          ある部 = 部.new
          定数を設定(定数名, ある部)
          特異組.定義(名前) { ある部 }
        end
      end
    end
    ある部.部で評価(&塊)

    ある部
  }
  秘密 :部の定義

  定義(:組の定義) {|ある組, 原型: 物, &塊|
    case (ある組)
    when 記号, 文字列
      名前 = ある組
      定数名 = "JA#{名前}".to_sym
      if (自分 == 日本語化 || 自分 == 日本語化::最上位) then
        if ((日本語化.定数は定義済みか? 定数名) && ! 原型) then
          ある組 = 日本語化.定数を取得(定数名)
        else
          ある組 = 組.new(原型)
          日本語化.定数を設定(定数名, ある組)
          日本語化.定義(名前) { ある組 }
        end
      else
        if ((定数は定義済みか? 定数名) && ! 原型) then
          ある組 = 定数を取得(定数名)
        else
          ある組 = 組.new(原型 || 物)
          定数を設定(定数名, ある組)
          特異組.定義(名前) { ある組 }
        end
      end
    end
    ある組.組で評価(&塊)

    ある組
  }
  秘密 :組の定義
end

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
