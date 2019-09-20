# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/base'
要求 'japanize/names'

部(:制御構造) {
  組(:肯否分岐_条件節) {
    定義(:初期化) {|&塊|
      @条件 = 塊
    }

    定義(:であるなら) {|&塊|
      if (@条件[]) then
        制御構造::肯否分岐_有効な肯定節.新規(塊[])
      else
        制御構造::肯否分岐_無効な肯定節.新規
      end
    }

    定義(:でなければ) {|&塊|
      unless (@条件[]) then
        制御構造::肯否分岐_有効な否定節.新規(塊[])
      else
        制御構造::肯否分岐_無効な否定節.新規
      end
    }
  }

  組(:肯否分岐_有効な肯定節) {
    定義(:初期化) {|結果|
      @結果 = 結果
    }

    定義(:である) {
      @結果
    }

    定義(:でなければ) {|&塊|
      制御構造::肯否分岐_終了節.新規(@結果)
    }

    定義(:もし条件が) {|&塊|
      制御構造::肯否分岐_無効な継続条件節.新規(@結果)
    }
  }

  組(:肯否分岐_無効な肯定節) {
    定義(:である) {
      無値
    }

    定義(:でなければ) {|&塊|
      制御構造::肯否分岐_終了節.新規(塊[])
    }

    定義(:もし条件が) {|&塊|
      制御構造::肯否分岐_有効な継続条件節.新規(&塊)
    }
  }

  組(:肯否分岐_有効な否定節) {
    定義(:初期化) {|結果|
      @結果 = 結果
    }

    定義(:である) {
      @結果
    }

    定義(:であるなら) {|&塊|
      制御構造::肯否分岐_終了節.新規(@結果)
    }
  }

  組(:肯否分岐_無効な否定節) {
    定義(:である) {
      無値
    }

    定義(:であるなら) {|&塊|
      制御構造::肯否分岐_終了節.新規(塊[])
    }
  }

  組(:肯否分岐_有効な継続条件節) {
    定義(:初期化) {|&塊|
      @条件 = 塊
    }

    定義(:であるなら) {|&塊|
      if (@条件[]) then
        制御構造::肯否分岐_有効な継続条件の有効な肯定節.新規(塊[])
      else
        制御構造::肯否分岐_有効な継続条件の無効な肯定節.新規
      end
    }
  }

  組(:肯否分岐_無効な継続条件節) {
    定義(:初期化) {|結果|
      @結果 = 結果
    }

    定義(:であるなら) {|&塊|
      制御構造::肯否分岐_無効な継続条件の肯定節.新規(@結果)
    }
  }

  組(:肯否分岐_有効な継続条件の有効な肯定節) {
    定義(:初期化) {|結果|
      @結果 = 結果
    }

    定義(:である) {
      @結果
    }

    定義(:もし条件が) {|&塊|
      制御構造::肯否分岐_無効な継続条件節.新規(@結果)
    }

    定義(:でなければ) {
      制御構造::肯否分岐_終了節.新規(@結果)
    }
  }

  組(:肯否分岐_有効な継続条件の無効な肯定節) {
    定義(:である) {
      無値
    }

    定義(:もし条件が) {|&塊|
      制御構造::肯否分岐_有効な継続条件節.新規(&塊)
    }

    定義(:でなければ) {|&塊|
      制御構造::肯否分岐_終了節.新規(塊[])
    }
  }

  組(:肯否分岐_無効な継続条件の肯定節) {
    定義(:初期化) {|結果|
      @結果 = 結果
    }

    定義(:である) {
      @結果
    }

    定義(:もし条件が) {|&塊|
      制御構造::肯否分岐_無効な継続条件節.新規(@結果)
    }

    定義(:でなければ) {|&塊|
      制御構造::肯否分岐_終了節.新規(@結果)
    }
  }

  組(:肯否分岐_終了節) {
    定義(:初期化) {|結果|
      @結果 = 結果
    }

    定義(:である) {
      @結果
    }
  }

  組(:条件分岐_開始節) {
    定義(:初期化) {|&塊|
      @値 = 塊
    }

    定義(:もし) {|&塊|
      制御構造::条件分岐_有効な条件節.新規(@値[], &塊)
    }

    定義(:でなければ) {|&塊|
      制御構造::条件分岐_終了節.新規(塊[])
    }
  }

  組(:条件分岐_有効な条件節) {
    定義(:初期化) {|値, &塊|
      @値 = 値
      @条件 = 塊
      @正規表現が最後に一致した結果 = nil
    }

    定義(:条件に合うか?) {
      if (@条件[] === @値) then
        # 条件が正規表現だった場合last_matchはここでしかアクセスできないため、後から参照できるように保存しておく
        @正規表現が最後に一致した結果 = 正規表現.last_match
        自分
      end
    }
    秘密 :条件に合うか?

    定義(:か) {|&塊|
      完了 = 条件に合うか?
      制御構造::条件分岐_有効な追加条件節.新規(@値, 完了, @正規表現が最後に一致した結果, &塊)
    }

    定義(:であるなら) {|&塊|
      if (条件に合うか?) then
        # 呼び出し元からアクセスできないのでlast_matchを手続きの引数に渡す
        制御構造::条件分岐_有効な条件節の有効な肯定節.新規(塊[@正規表現が最後に一致した結果])
      else
        制御構造::条件分岐_有効な条件節の無効な肯定節.新規(@値)
      end
    }
  }

  組(:条件分岐_無効な条件節) {
    定義(:初期化) {|結果|
      @結果 = 結果
    }

    定義(:か) {|&塊|
      制御構造::条件分岐_無効な追加条件節.新規(@結果)
    }

    定義(:であるなら) {|&塊|
      制御構造::条件分岐_無効な肯定節.新規(@結果)
    }
  }

  組(:条件分岐_有効な追加条件節) {
    定義(:初期化) {|値, 完了, 正規表現が最後に一致した結果, &塊|
      @値 = 値
      @完了 = 完了
      @正規表現が最後に一致した結果 = 正規表現が最後に一致した結果
      @条件 = 塊
    }

    定義(:条件に合うか?) {
      if (@完了) then
        自分
      elsif (@条件[] === @値) then
        # 条件が正規表現だった場合last_matchはここでしかアクセスできないため、後から参照できるように保存しておく
        @正規表現が最後に一致した結果 = 正規表現.last_match
        自分
      end
    }
    秘密 :条件に合うか?

    定義(:か) {|&塊|
      完了 = 条件に合うか?
      制御構造::条件分岐_有効な追加条件節.新規(@値, 完了, @正規表現が最後に一致した結果, &塊)
    }

    定義(:であるなら) {|&塊|
      if (条件に合うか?) then
        # 呼び出し元からアクセスできないのでlast_matchを手続きの引数に渡す
        制御構造::条件分岐_有効な条件節の有効な肯定節.新規(塊[@正規表現が最後に一致した結果])
      else
        制御構造::条件分岐_有効な条件節の無効な肯定節.新規(@値)
      end
    }
  }

  組(:条件分岐_無効な追加条件節) {
    定義(:初期化) {|結果|
      @結果 = 結果
    }

    定義(:か) {|&塊|
      自分
    }

    定義(:であるなら) {
      制御構造::条件分岐_無効な肯定節.新規(@結果)
    }
  }

  組(:条件分岐_有効な条件節の有効な肯定節) {
    定義(:初期化) {|結果|
      @結果 = 結果
    }

    定義(:である) {
      @結果
    }

    定義(:でなければ) {|&塊|
      制御構造::条件分岐_終了節.新規(@結果)
    }

    定義(:もし) {|&塊|
      制御構造::条件分岐_無効な条件節.新規(@結果)
    }
  }

  組(:条件分岐_有効な条件節の無効な肯定節) {
    定義(:初期化) {|値|
      @値 = 値
    }

    定義(:である) {
      無値
    }

    定義(:でなければ) {|&塊|
      制御構造::条件分岐_終了節.新規(塊[])
    }

    定義(:もし) {|&塊|
      制御構造::条件分岐_有効な条件節.新規(@値, &塊)
    }
  }

  組(:条件分岐_無効な肯定節) {
    定義(:初期化) {|結果|
      @結果 = 結果
    }

    定義(:である) {
      @結果
    }

    定義(:でなければ) {|&塊|
      制御構造::条件分岐_終了節.新規(@結果)
    }

    定義(:もし) {|&塊|
      制御構造::条件分岐_無効な条件節.新規(@結果)
    }
  }

  組(:条件分岐_終了節) {
    定義(:初期化) {|結果|
      @結果 = 結果
    }

    定義(:である) {
      @結果
    }
  }

  組(:手続きの制御) {
    定義(:初期化) {|外側の目印, 内側の目印|
      @外側の目印 = 外側の目印
      @内側の目印 = 内側の目印
    }

    定義(:終わる) {|返り値=無値|
      脱出(@外側の目印, 返り値)
    }

    定義(:次へ進む) {|返り値=無値|
      脱出(@内側の目印, [ :次へ進む, 返り値 ])
    }

    定義(:やり直す) {
      脱出(@内側の目印, :やり直す)
    }
  }

  定義(:手続きを渡す) {|ある物, 操作の名前, *引数, 秘密の操作を許可: 偽値, **名前付き引数, &塊|
    if (秘密の操作を許可) then
      if (名前付き引数.empty?) then
        実行 = 手続き{|&塊| ある物.__send__(操作の名前, *引数, &塊) }
      else
        実行 = 手続き{|&塊| ある物.__send__(操作の名前, *引数, **名前付き引数, &塊) }
      end
    else
      if (名前付き引数.empty?) then
        実行 = 手続き{|&塊| ある物.public_send(操作の名前, *引数, &塊) }
      else
        実行 = 手続き{|&塊| ある物.public_send(操作の名前, *引数, **名前付き引数, &塊) }
      end
    end

    外側の目印 = 物.新規
    内側の目印 = 物.新規
    制御 = 制御構造::手続きの制御.新規(外側の目印, 内側の目印)

    捕捉(外側の目印) {
      実行[制御] {|*引数|
        返り値 = 無値
        命令, 次の返り値 = 捕捉(内側の目印) {
          返り値 = 塊[制御, *引数]
          無値
        }

        case (命令)
        when :次へ進む
          next 次の返り値
        when :やり直す
          redo
        end

        返り値
      }
    }
  }
  部の関数 :手続きを渡す

  組(:繰り返しの制御) {
    定義(:初期化) {|外側の目印, 内側の目印|
      @外側の目印 = 外側の目印
      @内側の目印 = 内側の目印
    }

    定義(:終わる) {|返り値=無値|
      脱出(@外側の目印, 返り値)
    }

    定義(:次へ進む) {
      脱出(@内側の目印, :次へ進む)
    }

    定義(:やり直す) {
      脱出(@内側の目印, :やり直す)
    }
  }

  組(:成立条件の繰り返し) {
    定義(:初期化) {|&塊|
      @条件 = 塊
    }

    定義(:繰り返す) {|&塊|
      if (塊.parameters.empty?) then
        while (@条件[])
          塊[]
        end

        無値
      else
        外側の目印 = 物.新規
        内側の目印 = 物.新規
        制御 = 制御構造::繰り返しの制御.新規(外側の目印, 内側の目印)

        捕捉(外側の目印) {
          while (@条件[])
            命令 = 捕捉(内側の目印) {
              塊[制御]
              無値
            }

            case (命令)
            when :次へ進む
              next
            when :やり直す
              redo
            end
          end

          無値
        }
      end
    }
  }

  組(:到達条件の繰り返し) {
    定義(:初期化) {|&塊|
      @条件 = 塊
    }

    定義(:繰り返す) {|&塊|
      if (塊.parameters.empty?) then
        until (@条件[])
          塊[]
        end
      else
        外側の目印 = 物.新規
        内側の目印 = 物.新規
        制御 = 制御構造::繰り返しの制御.新規(外側の目印, 内側の目印)

        捕捉(外側の目印) {
          until (@条件[])
            命令 = 捕捉(内側の目印) {
              塊[制御]
              無値
            }

            case (命令)
            when :次へ進む
              next
            when :やり直す
              redo
            end
          end

          無値
        }
      end
    }
  }

  組(:後置条件の繰り返し) {
    定義(:初期化) {|&塊|
      @繰り返し = 塊
    }

    定義(:この条件なら) {|&条件|
      if (@繰り返し.parameters.empty?) then
        begin
          @繰り返し[]
        end while (条件[])

        無値
      else
        外側の目印 = 物.新規
        内側の目印 = 物.新規
        制御 = 制御構造::繰り返しの制御.新規(外側の目印, 内側の目印)

        捕捉(外側の目印) {
          begin
            命令 = 捕捉(内側の目印) {
              @繰り返し[制御]
              無値
            }

            case (命令)
            when :次へ進む
              next
            when :やり直す
              redo
            end
          end while (条件[])

          無値
        }
      end
    }

    定義(:この条件まで) {|&条件|
      if (@繰り返し.parameters.empty?) then
        begin
          @繰り返し[]
        end until (条件[])
      else
        外側の目印 = 物.新規
        内側の目印 = 物.新規
        制御 = 制御構造::繰り返しの制御.新規(外側の目印, 内側の目印)

        捕捉(外側の目印) {
          begin
            命令 = 捕捉(内側の目印) {
              @繰り返し[制御]
              無値
            }

            case (命令)
            when :次へ進む
              next
            when :やり直す
              redo
            end
          end until (条件[])

          無値
        }
      end
    }
  }

  定義(:列挙できる物を繰り返す) {|列挙できる物, &塊|
    外側の目印 = 物.新規
    内側の目印 = 物.新規
    制御 = 制御構造::繰り返しの制御.新規(外側の目印, 内側の目印)

    捕捉(外側の目印) {
      for 項目 in 列挙できる物
        命令 = 捕捉(内側の目印) {
          塊[制御, 項目]
          無値
        }

        case (命令)
        when :次へ進む
          next
        when :やり直す
          redo
        end
      end
    }
  }
  部の関数 :列挙できる物を繰り返す

  定義(:無限に循環する) {|&塊|
    if (塊.parameters.empty?) then
      loop(&塊)
    else
      外側の目印 = 物.新規
      内側の目印 = 物.新規
      制御 = 制御構造::繰り返しの制御.新規(外側の目印, 内側の目印)

      捕捉(外側の目印) {
        loop do
          命令 = 捕捉(内側の目印) {
            塊[制御]
            無値
          }

          case (命令)
          when :次へ進む
            next
          when :やり直す
            redo
          end
        end
      }
    end
  }
  部の関数 :無限に循環する

  組(:領域の例外処理) {
    定義(:初期化) {|例外の型, 例外の処理|
      @例外の型 = 例外の型
      @例外の処理 = 例外の処理
    }

    定義(:処理対象の例外か?) {|ある例外|
      ある例外.一種か? @例外の型
    }

    定義(:[]) {|発生した例外|
      @例外の処理[発生した例外]
    }
  }

  組(:領域の折り返し処理) {
    定義(:初期化) {
      @本処理 = 無値
      @後始末 = 無値
      @例外処理の一覧 = []
      @例外が無い時の処理 = 無値
    }

    読み取り属性 :本処理
    読み取り属性 :後始末
    読み取り属性 :例外処理の一覧
    読み取り属性 :例外が無い時の処理

    定義(:本処理を設定) {|&塊|
      @本処理 = 塊
      無値
    }

    定義(:後始末を設定) {|&塊|
      @後始末 = 塊
      無値
    }

    定義(:例外処理を追加) {|例外の型, &塊|
      @例外処理の一覧 << 制御構造::領域の例外処理.新規(例外の型, 塊)
      無値
    }

    定義(:例外が無い時の処理を設定) {|&塊|
      @例外が無い時の処理 = 塊
      無値
    }
  }

  組(:領域の制御) {
    定義(:初期化) {|外側の目印, 内側の目印, 折り返し処理|
      @外側の目印 = 外側の目印
      @内側の目印 = 内側の目印
      @折り返し処理 = 折り返し処理
    }

    定義(:戻る) {|*引数|
      if (引数.empty?) then
        脱出(@外側の目印)
      elsif (引数.length == 1) then
        脱出(@外側の目印, 引数[0])
      else
        脱出(@外側の目印, 引数)
      end
    }

    定義(:やり直す) {
      脱出(@内側の目印, 真値)
    }

    定義(:本処理) {|&塊|
      @折り返し処理.本処理を設定(&塊)
    }

    定義(:例外を捕捉) {|例外の型=標準的な失敗, *追加の例外の一覧, &塊|
      @折り返し処理.例外処理を追加(例外の型, &塊)
      for 追加の例外の型 in 追加の例外の一覧
        @折り返し処理.例外処理を追加(追加の例外の型, &塊)
      end
    }

    定義(:例外が無い時) {|&塊|
      @折り返し処理.例外が無い時の処理を設定(&塊)
    }

    定義(:後始末) {|&塊|
      @折り返し処理.後始末を設定(&塊)
    }
  }

  定義(:領域) {|&塊|
    外側の目印 = 物.新規
    内側の目印 = 物.新規
    折り返し処理 = 制御構造::領域の折り返し処理.新規
    制御 = 制御構造::領域の制御.新規(外側の目印, 内側の目印, 折り返し処理)

    捕捉(外側の目印) {
      戻り値 = 塊[制御]

      if (折り返し処理.本処理) then
        begin
          begin
            繰り返すか = 捕捉(内側の目印) {
              begin
                戻り値 = 折り返し処理.本処理[]
              rescue 例外 => 発生した例外
                例外処理 = 折り返し処理.例外処理の一覧.find{|ある例外処理|
                  ある例外処理.処理対象の例外か? 発生した例外
                }
                if (例外処理) then
                  戻り値 = 例外処理[発生した例外]
                else
                  例外を発生
                end
              else
                if (折り返し処理.例外が無い時の処理) then
                  戻り値 = 折り返し処理.例外が無い時の処理[]
                end
              end

              偽値
            }
          end while (繰り返すか)
        ensure
          if (折り返し処理.後始末) then
            折り返し処理.後始末[]
          end
        end
      end

      戻り値
    }
  }
  部の関数 :領域
}

部(:制御命令) {
  定義(:もし条件が) {|&塊|
    制御構造::肯否分岐_条件節.新規(&塊)
  }
  部の関数 :もし条件が

  定義(:この値が) {|&塊|
    制御構造::条件分岐_開始節.新規(&塊)
  }
  部の関数 :この値が

  定義(:この条件なら) {|&塊|
    制御構造::成立条件の繰り返し.新規(&塊)
  }
  部の関数 :この条件なら

  定義(:この条件まで) {|&塊|
    制御構造::到達条件の繰り返し.新規(&塊)
  }
  部の関数 :この条件まで

  定義(:手続きを渡す) {|ある物, 操作の名前, *引数, 秘密の操作を許可: 偽値, **名前付き引数, &塊|
    if (ある物.同一か? 自分) then
      秘密の操作を許可 = 真値
    end
    制御構造.手続きを渡す(ある物, 操作の名前, *引数, 秘密の操作を許可: 秘密の操作を許可, **名前付き引数, &塊)
  }
  部の関数 :手続きを渡す

  定義(:繰り返す) {|*引数, &塊|
    unless (引数.empty?) then
      制御構造.列挙できる物を繰り返す(*引数, &塊)
    else
      制御構造::後置条件の繰り返し.新規(&塊)
    end
  }
  部の関数 :繰り返す

  # 核の定義を上書きする
  定義(:循環) {|&塊|
    制御構造.無限に循環する(&塊)
  }
  部の関数 :循環

  定義(:領域) {|&塊|
    制御構造.領域(&塊)
  }
  部の関数 :領域
}
付加 制御命令

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
