# -*- coding: utf-8 -*-

require 'japanize'

開始 = 時刻.現在
外部のコマンドを実行する(*スクリプトの引数)
終了 = 時刻.現在

積算時間 = プロセス.積算時間を取得
実時間 = 終了 - 開始
ユーザCPU時間 = 積算時間.子プロセスのユーザCPU時間
システムCPU時間 = 積算時間.子プロセスのシステムCPU時間

標準エラー出力.整形して印字("%11.1f 実時間 %11.1f ユーザ %11.1f システム\n", 実時間, ユーザCPU時間, システムCPU時間)