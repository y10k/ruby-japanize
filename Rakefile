# -*- coding: utf-8 -*-

require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rdoc/task'

Rake::TestTask.new do |task|
  if ((ENV.key? 'RUBY_DEBUG') && (! ENV['RUBY_DEBUG'].empty?)) then
    task.ruby_opts << '-d'
  end
end

rule '.html' => [ '.md' ] do |t|
  sh "pandoc --from=markdown --to=html5 --standalone --self-contained --css=$HOME/.pandoc/github.css --output=#{t.name} #{t.source}"
end

desc 'Build README.html from markdown source'
task :readme => %w[ README.html ]
CLOBBER.include 'README.html'

desc 'Build CHANGELOT.html from markdown source'
task :changelog => %w[ CHANGELOG.html ]
CLOBBER.include 'CHANGELOG.html'

namespace :sample do
  desc 'Build sample/README.html from markdown source'
  task :readme => %w[ sample/README.html ]
  CLOBBER.include 'sample/README.html'
end

namespace :words do
  word_count = lambda{|files, pattern|
    count_table = Hash.new(0)
    for f in files
      IO.foreach(f) do |line|
        code, _comment = line.split('#', 2)
        code.scan(pattern) {|word|
          count_table[word] += 1
          if (ENV.key? 'DEBUG') then
            puts "#{f}: #{word}: #{$`} <<< #{word} >>> #{$'}"
          end
        }
      end
    end

    count_table
  }

  desc 'List kanji words'
  task :kanji do
    rb_files = `git ls-files`.lines.map(&:chomp).grep(/\.rb$/).grep_v(/^test/)
    word_count[rb_files, /\p{Han}+/].sort_by{|w, c| [ c, w ] }.reverse_each do |w, c|
      puts [ c, w ].join("\t")
    end
  end

  desc 'List hiragana words'
  task :hiragana do
    rb_files = `git ls-files`.lines.map(&:chomp).grep(/\.rb$/).grep_v(/^test/)
    word_count[rb_files, /\p{Hiragana}+/].sort_by{|w, c| [ c, w ] }.reverse_each do |w, c|
      puts [ c, w ].join("\t")
    end
  end

  desc 'List katakana words'
  task :katakana do
    rb_files = `git ls-files`.lines.map(&:chomp).grep(/\.rb$/).grep_v(/^test/)
    word_count[rb_files, /[\p{Katakana}ー]+/].sort_by{|w, c| [ c, w ] }.reverse_each do |w, c|
      puts [ c, w ].join("\t")
    end
  end

  desc 'List japanese words'
  task :japanese do
    rb_files = `git ls-files`.lines.map(&:chomp).grep(/\.rb$/).grep_v(/^test/)
    word_count[rb_files,
               /
                 [_A-Za-z]*
                 [\p{Han}\p{Hiragana}\p{Katakana}ー]
                 [\p{Han}\p{Hiragana}\p{Katakana}ー_A-Za-z0-9]*
                 [!?]?
               /x
              ].sort_by{|w, c| [ c, w ] }.reverse_each do |w, c|
      puts [ c, w ].join("\t")
    end
  end
end

namespace :lib do
  ruby_version_suffix = lambda{
    RUBY_DESCRIPTION.split[1].tr('.', '_')
  }

  task :ruby_version_suffix do
    puts ruby_version_suffix.call
  end

  desc 'Dump built-in libraries'
  task :dump do
    ruby "misc/dump_lib.rb >misc/lib_#{ruby_version_suffix.call}.yml"
  end
  CLOBBER.include "misc/lib_#{ruby_version_suffix.call}.yml"

  desc 'Dump not japanized methods'
  task :no_ja do
    ruby "misc/dump_lib.rb --not-defined-ja >misc/lib_no_ja_#{ruby_version_suffix.call}.yml"
  end
  CLOBBER.include "misc/lib_no_ja_#{ruby_version_suffix.call}.yml"
end

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
