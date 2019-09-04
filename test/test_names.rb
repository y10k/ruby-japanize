# -*- coding: utf-8 -*-

require 'japanize/core'

要求 'japanize/names'
要求 'japanize/test_unit'

部(日本語化) {
  部(:試験) {
    組(:組み込みライブラリの日本語名称の試験, 原型: 試験単位::試験事例) {
      試験('日本語名称を確認') {
        # 疑似変数の日本語名称を確認する。
        同一であることを確認(nil,   無値)
        同一であることを確認(true,  真値)
        同一であることを確認(false, 偽値)

        # 大域変数の日本語名称を確認する。
        同一であることを確認($LOADED_FEATURES, $配置された機能の一覧)
        同一であることを確認($LOAD_PATH,       $配置対象の探索経路)
        同一であることを確認($DEBUG,           $点検中)
        同一であることを確認($VERBOSE,         $冗長)
        同一であることを確認($PROGRAM_NAME,    $プログラムの名前)
        同一であることを確認($stdout,          $標準出力)
        同一であることを確認($SAFE,            $安全度)
        同一であることを確認($stderr,          $標準エラー出力)
        同一であることを確認($stdin,           $標準入力)
        等しいことを確認($FILENAME, $ファイル名)

        # 最上位にある組の日本語名称を確認する。
        同一であることを確認(BasicObject,   物の土台)
        同一であることを確認(Object,        物)
        同一であることを確認(Array,         配列)
        同一であることを確認(Binding,       束縛)
        同一であることを確認(Dir,           ディレクトリ)
        同一であることを確認(Encoding,      文字符号化方式)
        同一であることを確認(Enumerator,    列挙)
        同一であることを確認(FalseClass,    偽値の組)
        同一であることを確認(Fiber,         ファイバー)
        同一であることを確認(Hash,          連想配列)
        同一であることを確認(IO,            入出力)
        同一であることを確認(File,          ファイル)
        同一であることを確認(MatchData,     正規表現が一致した結果)
        同一であることを確認(Method,        操作)
        同一であることを確認(Module,        部)
        同一であることを確認(Class,         組)
        同一であることを確認(NilClass,      無値の組)
        同一であることを確認(Numeric,       数値)
        同一であることを確認(Complex,       複素数)
        同一であることを確認(Float,         浮動小数点)
        同一であることを確認(Integer,       整数)
        同一であることを確認(Rational,      有理数)
        同一であることを確認(Proc,          手続き型)
        同一であることを確認(Random,        疑似乱数生成器)
        同一であることを確認(Range,         範囲)
        同一であることを確認(Regexp,        正規表現)
        同一であることを確認(String,        文字列)
        同一であることを確認(Struct,        構造体)
        同一であることを確認(Symbol,        記号)
        同一であることを確認(Thread,        スレッド)
        同一であることを確認(ThreadGroup,   スレッドの群れ)
        同一であることを確認(Time,          時刻)
        同一であることを確認(TracePoint,    発生事象の追跡)
        同一であることを確認(TrueClass,     真値の組)
        同一であることを確認(UnboundMethod, 未束縛の操作)

        # 最上位にある部の日本語名称を確認する。
        同一であることを確認(Comparable,  比較できる)
        同一であることを確認(Enumerable,  列挙できる)
        同一であることを確認(FileTest,    ファイル検査)
        同一であることを確認(GC,          ゴミ集め)
        同一であることを確認(Kernel,      核)
        同一であることを確認(Marshal,     変換)
        同一であることを確認(Math,        数学)
        同一であることを確認(ObjectSpace, 物の空間)
        同一であることを確認(Process,     プロセス)
        同一であることを確認(Signal,      シグナル)

        # 最上位にある物の日本語名称を確認する。
        同一であることを確認(ARGV,             スクリプトの引数)
        同一であることを確認(ARGF,             スクリプトの入力)
        同一であることを確認(ENV,              環境変数)
        同一であることを確認(STDERR,           標準エラー出力)
        同一であることを確認(STDIN,            標準入力)
        同一であることを確認(STDOUT,           標準出力)
        同一であることを確認(TOPLEVEL_BINDING, 最上位の束縛)

        # 最上位にある例外の日本語名称を確認する。
        同一であることを確認(Exception,           例外)
        同一であることを確認(NoMemoryError,       記憶領域不足のため失敗)
        同一であることを確認(ScriptError,         スクリプトの失敗)
        同一であることを確認(LoadError,           配置の失敗)
        同一であることを確認(NotImplementedError, 未実装のため失敗)
        同一であることを確認(SyntaxError,         文法誤りのため失敗)
        同一であることを確認(SecurityError,       安全に違反するため失敗)
        同一であることを確認(SignalException,     シグナルの例外)
        同一であることを確認(Interrupt,           割り込み)
        同一であることを確認(StandardError,       標準的な失敗)
        同一であることを確認(ArgumentError,       引数が誤っているため失敗)
        同一であることを確認(UncaughtThrowError,  補足できないため失敗)
        同一であることを確認(EncodingError,       文字符号化方式の失敗)
        同一であることを確認(FiberError,          ファイバーの失敗)
        同一であることを確認(IOError,             入出力の失敗)
        同一であることを確認(EOFError,            ファイル終端のため失敗)
        同一であることを確認(IndexError,          添字が範囲外のため失敗)
        同一であることを確認(KeyError,            キーの照合に失敗)
        同一であることを確認(StopIteration,       繰り返しの停止)
        同一であることを確認(ClosedQueueError,    待ち行列が閉鎖済みのため失敗)
        同一であることを確認(LocalJumpError,      局所的な跳躍に失敗)
        同一であることを確認(NameError,           名前解決に失敗)
        同一であることを確認(NoMethodError,       操作が無いため失敗)
        同一であることを確認(RangeError,          範囲外のため失敗)
        同一であることを確認(FloatDomainError,    浮動小数点の定義域外のため失敗)
        同一であることを確認(RegexpError,         正規表現の失敗)
        同一であることを確認(RuntimeError,        実行時の失敗)
        同一であることを確認(FrozenError,         凍結済みのため失敗)
        同一であることを確認(SystemCallError,     システムコールの失敗)
        同一であることを確認(ThreadError,         スレッドの失敗)
        同一であることを確認(TypeError,           型が合わないため失敗)
        同一であることを確認(ZeroDivisionError,   零除算のため失敗)
        同一であることを確認(SystemExit,          システムの終了)
        同一であることを確認(SystemStackError,    システムスタック超過のため失敗)

        # 入れ子になった組の日本語名称を確認する。
        同一であることを確認(Encoding::Converter,            文字符号化方式::変換器)
        同一であることを確認(Enumerator::ArithmeticSequence, 列挙::等差数列)
        同一であることを確認(Enumerator::Lazy,               列挙::遅延評価)
        同一であることを確認(File::Stat,                     ファイル::状態)
        同一であることを確認(ObjectSpace::WeakMap,           物の空間::弱参照の連想配列)
        同一であることを確認(Process::Status,                プロセス::状態)
        同一であることを確認(Process::Tms,                   プロセス::積算時間)
        同一であることを確認(Thread::Backtrace,              スレッド::実行履歴)
        同一であることを確認(Thread::Backtrace::Location,    スレッド::実行履歴::場所)
        同一であることを確認(Thread::ConditionVariable,      スレッド::条件変数)
        同一であることを確認(Thread::Mutex,                  スレッド::相互排他ロック)
        同一であることを確認(Thread::Queue,                  スレッド::待ち行列)
        同一であることを確認(Thread::SizedQueue,             スレッド::上限付き待ち行列)

        # 入れ子になった部の日本語名称を確認する。
        同一であることを確認(File::Constants,  ファイル::定数)
        同一であることを確認(GC::Profiler,     ゴミ集め::統計情報)
        同一であることを確認(IO::WaitReadable, 入出力::読み込み待ちのため失敗)
        同一であることを確認(IO::WaitWritable, 入出力::書き込み待ちのため失敗)
        同一であることを確認(Process::GID,     プロセス::グループID)
        同一であることを確認(Process::Sys,     プロセス::システムコール)
        同一であることを確認(Process::UID,     プロセス::ユーザID)

        # 入れ子になった例外の日本語名称を確認する。
        同一であることを確認(Encoding::CompatibilityError,       文字符号化方式::互換性がないため失敗)
        同一であることを確認(Encoding::ConverterNotFoundError,   文字符号化方式::変換器が存在しないため失敗)
        同一であることを確認(Encoding::InvalidByteSequenceError, 文字符号化方式::バイト列が不正なため失敗)
        同一であることを確認(Encoding::UndefinedConversionError, 文字符号化方式::変換後の文字が存在しないため失敗)
        同一であることを確認(Math::DomainError,                  数学::定義域外のため失敗)
      }
    }
  }
}

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
