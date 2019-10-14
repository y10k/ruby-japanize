# -*- coding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'japanize/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruby-japanize'
  spec.version       = Japanize::VERSION
  spec.authors       = ['TOKI Yoshinori']
  spec.email         = ['toki@freedom.ne.jp']

  spec.summary       = %q{Rubyを日本語化する}
  spec.description   = <<-'EOF'
    日本語の別名や構文を定義してRubyを日本語で書けるようにする。
  EOF
  spec.homepage      = 'https://github.com/y10k/ruby-japanize'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://nogemserver.localhost'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject {|f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) {|f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.6'

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'test-unit'
  spec.add_development_dependency 'rdoc'
  spec.add_development_dependency 'irb'
end

# Local Variables:
# mode: Ruby
# indent-tabs-mode: nil
# End:
