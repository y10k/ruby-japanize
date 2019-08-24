# -*- coding: utf-8 -*-

class Module
  alias 別名 alias_method

  別名(:定義, :define_method)
  別名(:定数は定義済みか?, :const_defined?)
  別名(:定数を取得, :const_get)
  別名(:定数を設定, :const_set)
  別名(:部で評価, :module_eval)
  別名(:組で評価, :class_eval)
end

class Object
  別名(:特異組, :singleton_class)
  定義(:特異組の定義) {|&塊|
    特異組.組で評価(&塊)
  }
end

module J
end
include J

Japanize = J unless (defined? Japanize)
Japanize::TOP_LEVEL = self

class Module
  定義(:日本語の定義) {|名前, 値|
    定数 = "J#{名前}".to_sym
    定数を設定(定数, 値)
    if (self == Japanize || self ==  Japanize::TOP_LEVEL) then
      Japanize.定義(名前) { 値 }
    else
      特異組の定義{
        定義(名前) { 値 }
      }
    end
  }
end

module Japanize
  定義(:自分) { self }
  定義(:最上位) { TOP_LEVEL }

  日本語の定義(:日本語化, ::Japanize)
  日本語の定義(:核, ::Kernel)
  日本語の定義(:部, ::Module)
  日本語の定義(:組, ::Class)
  日本語の定義(:物, ::Object)
  日本語の定義(:記号, ::Symbol)
  日本語の定義(:文字列, ::String)

  定義(:部の定義) {|部, &塊|
    case (部)
    when 記号, 文字列
      名前 = 部
      定数 = "J#{名前}".to_sym
      if (定数は定義済みか? 定数) then
        部 = 定数を取得(定数)
      else
        部 = 自分.部.new
        定数を設定(定数, 部)
        if (自分 == 日本語化 || 自分 == 日本語化::最上位) then
          日本語化.定義(名前) { 部 }
        else
          特異組の定義{
            定義(名前) { 部 }
          }
        end
      end
    end
    部.部で評価(&塊)
  }

  定義(:組の定義) {|組, 上位: nil, &塊|
    case (組)
    when 記号, 文字列
      名前 = 組
      定数 = "J#{名前}".to_sym
      if ((定数は定義済みか? 定数) && ! 上位) then
        組 = 定数を取得(定数)
      else
        組 = 自分.組.new(上位 || 物)
        定数を設定(定数, 組)
        if (自分 == 日本語化 || 自分 == 日本語化::最上位) then
          日本語化.定義(名前) { 組 }
        else
          特異組の定義{
            定義(名前) { 組 }
          }
        end
      end
    end
    組.組で評価(&塊)
  }
end

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
