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

namespace :sample do
  desc 'Build sample/README.html from markdown source'
  task :readme => %w[ sample/README.html ]
  CLOBBER.include 'sample/README.html'
end

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
