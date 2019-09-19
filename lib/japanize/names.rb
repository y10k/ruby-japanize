# -*- coding: utf-8 -*-

require 'japanize/core'

# 疑似変数の日本語名称を定義する。
# 尚、以下の疑似変数は定義しない、というかできない。
#   - __FILE__
#   - __LINE__
#   - __ENCODING__

日本語の定数 :無値, nil
日本語の定数 :真値, true
日本語の定数 :偽値, false

# 大域変数の日本語名称を定義する.

alias $配置された機能の一覧 $LOADED_FEATURES
alias $配置対象の探索経路   $LOAD_PATH
alias $点検中               $DEBUG
alias $冗長                 $VERBOSE
alias $プログラムの名前     $PROGRAM_NAME
alias $標準出力             $stdout
alias $ファイル名           $FILENAME
alias $安全度               $SAFE
alias $標準エラー出力       $stderr
alias $標準入力             $stdin


# 最上位にある組の日本語名称を定義する。
# 尚、以下の組は適切な日本語名称がないので定義しない。
#   - RubyVM

日本語の定数 :物の土台,               BasicObject
# 日本語の定数 :物,                   Object # japanize/coreで定義済み
日本語の定数 :配列,                   Array
日本語の定数 :束縛,                   Binding
日本語の定数 :ディレクトリ,           Dir
日本語の定数 :文字符号化方式,         Encoding
日本語の定数 :列挙,                   Enumerator
日本語の定数 :偽値の組,               FalseClass
日本語の定数 :ファイバー,             Fiber
日本語の定数 :連想配列,               Hash
日本語の定数 :入出力,                 IO
日本語の定数 :ファイル,               File
日本語の定数 :正規表現が一致した結果, MatchData
日本語の定数 :操作,                   Method
# 日本語の定数 :部,                   Module # japanize/coreで定義済み
# 日本語の定数 :組,                   Class  # japanize/coreで定義済み
日本語の定数 :無値の組,               NilClass
日本語の定数 :数値,                   Numeric
日本語の定数 :複素数,                 Complex
日本語の定数 :浮動小数点,             Float
日本語の定数 :整数,                   Integer
日本語の定数 :有理数,                 Rational
日本語の定数 :手続き型,               Proc
日本語の定数 :疑似乱数生成器,         Random
日本語の定数 :範囲,                   Range
日本語の定数 :正規表現,               Regexp
# 日本語の定数 :文字列,               String # japanize/coreで定義済み
日本語の定数 :構造体,                 Struct
# 日本語の定数 :記号,                 Symbol # japanize/coreで定義済み
日本語の定数 :スレッド,               Thread
日本語の定数 :スレッドの群れ,         ThreadGroup
日本語の定数 :時刻,                   Time
日本語の定数 :発生事象の追跡,         TracePoint
日本語の定数 :真値の組,               TrueClass
日本語の定数 :未束縛の操作,           UnboundMethod


# 最上位にある部の日本語名称を定義する。
# 尚、以下の部は適切な日本語名称がないので定義しない。
#   - Errno

日本語の定数 :比較できる,     Comparable
日本語の定数 :列挙できる,     Enumerable
日本語の定数 :ファイルの検査, FileTest
日本語の定数 :ゴミ集め,       GC
# 日本語の定数 :核,           Kernel
日本語の定数 :直列化,         Marshal
日本語の定数 :数学,           Math
日本語の定数 :物の空間,       ObjectSpace
日本語の定数 :プロセス,       Process
日本語の定数 :シグナル,       Signal


# 最上位にある物の日本語名称を定義する。

日本語の定数 :スクリプトの引数, ARGV
日本語の定数 :スクリプトの入力, ARGF
日本語の定数(:スクリプトの資料) { DATA } # DATAは未定義の場合もあるので遅延アクセスする
日本語の定数 :環境変数,         ENV
日本語の定数 :標準エラー出力,   STDERR
日本語の定数 :標準入力,         STDIN
日本語の定数 :標準出力,         STDOUT
日本語の定数 :最上位の束縛,     TOPLEVEL_BINDING


# 最上位にある例外の日本語名称を定義する。

日本語の定数 :例外,                                 Exception
日本語の定数 :記憶領域不足のため失敗,               NoMemoryError
日本語の定数 :スクリプトの失敗,                     ScriptError
日本語の定数 :配置の失敗,                           LoadError
日本語の定数 :未実装のため失敗,                     NotImplementedError
日本語の定数 :文法誤りのため失敗,                   SyntaxError
日本語の定数 :安全を侵害するため失敗,               SecurityError
日本語の定数 :シグナルの例外,                       SignalException
日本語の定数 :割り込み,                             Interrupt
日本語の定数 :標準的な失敗,                         StandardError
日本語の定数 :引数が誤っているため失敗,             ArgumentError
日本語の定数 :脱出を捕捉できないため失敗,           UncaughtThrowError
日本語の定数 :文字符号化方式の失敗,                 EncodingError
日本語の定数 :ファイバーの失敗,                     FiberError
日本語の定数 :入出力の失敗,                         IOError
日本語の定数 :ファイル終端のため失敗,               EOFError
日本語の定数 :添字が範囲外のため失敗,               IndexError
日本語の定数 :キーの照合に失敗,                     KeyError
日本語の定数 :繰り返しの停止,                       StopIteration
日本語の定数 :待ち行列が閉鎖済みのため失敗,         ClosedQueueError
日本語の定数 :局所的な跳躍に失敗,                   LocalJumpError
日本語の定数 :名前解決に失敗,                       NameError
日本語の定数 :操作が無いため失敗,                   NoMethodError
日本語の定数 :範囲外のため失敗,                     RangeError
日本語の定数 :浮動小数点の定義域外のため失敗,       FloatDomainError
日本語の定数 :正規表現の失敗,                       RegexpError
日本語の定数 :実行時の失敗,                         RuntimeError
日本語の定数 :凍結済みのため失敗,                   FrozenError
日本語の定数 :システムコールの失敗,                 SystemCallError
日本語の定数 :スレッドの失敗,                       ThreadError
日本語の定数 :型が合わないため失敗,                 TypeError
日本語の定数 :零除算のため失敗,                     ZeroDivisionError
日本語の定数 :システムの終了,                       SystemExit
日本語の定数 :システムのスタックが超過したため失敗, SystemStackError


# 入れ子になった組の日本語名称を定義する。

組(文字符号化方式) {
  日本語の定数 :変換器, Encoding::Converter
}

組(列挙) {
  日本語の定数 :等差数列, Enumerator::ArithmeticSequence
  日本語の定数 :遅延評価, Enumerator::Lazy
}

組(ファイル) {
  日本語の定数 :状態, File::Stat
}

部(物の空間) {
  日本語の定数 :弱参照の連想配列, ObjectSpace::WeakMap
}

部(プロセス) {
  日本語の定数 :状態,     Process::Status
  日本語の定数 :積算時間, Process::Tms
}

組(スレッド) {
  日本語の定数 :呼び出し履歴,     Thread::Backtrace
  組(呼び出し履歴) {
    日本語の定数 :場所,           Thread::Backtrace::Location
  }
  日本語の定数 :条件変数,         Thread::ConditionVariable
  日本語の定数 :相互排他制御,     Thread::Mutex
  日本語の定数 :待ち行列,         Thread::Queue
  日本語の定数 :上限付き待ち行列, Thread::SizedQueue
}


# 入れ子になった部の日本語名称を定義する。

組(ファイル) {
  日本語の定数 :定数, File::Constants
}

部(ゴミ集め) {
  日本語の定数 :統計情報, GC::Profiler
}

組(入出力) {
  日本語の定数 :読み込み待ちのため失敗, IO::WaitReadable
  日本語の定数 :書き込み待ちのため失敗, IO::WaitWritable
}

部(プロセス) {
  日本語の定数 :ユーザ識別番号,           Process::UID
  日本語の定数 :グループ識別番号,         Process::GID
  日本語の定数 :識別番号のシステムコール, Process::Sys
}


# 入れ子になった例外の日本語名称を定義する。
# 尚、以下の例外は適切な日本語名称がないので定義しない。
#   - Errno::*

組(文字符号化方式) {
  日本語の定数 :互換性がないため失敗,             Encoding::CompatibilityError
  日本語の定数 :変換器が存在しないため失敗,       Encoding::ConverterNotFoundError
  日本語の定数 :バイト列が不正なため失敗,         Encoding::InvalidByteSequenceError
  日本語の定数 :変換後の文字が存在しないため失敗, Encoding::UndefinedConversionError
}

部(数学) {
  日本語の定数 :定義域外のため失敗, Math::DomainError
}


# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
