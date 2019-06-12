
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jp_wage_calculation/version"

Gem::Specification.new do |spec|
  spec.name          = "jp_wage_calculation"
  spec.version       = JpWageCalculation::VERSION
  spec.authors       = ["kasima"]
  spec.email         = ["yama10705988.dev@gmail.com"]

  spec.summary       = %q{バイト代を計算するgemです。}
  spec.description   = %q{業務開始時間、業務終了時間、休憩時間を入力すると、日本の法律に沿った報酬額を返すgemです。}
  spec.homepage      = "https://github.com/mtkasima/jp_wage_calculation"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
