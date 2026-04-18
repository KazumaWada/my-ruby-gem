
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kazuma_wada/version"

Gem::Specification.new do |spec|
  spec.name          = "kazuma_wada"
  spec.version       = KazumaWada::VERSION
  spec.authors       = ["KazumaWada"]
  spec.email         = ["kazumawadaa@gmail.com"]

  spec.summary       = "Kazuma Wada's profile gem"
  spec.description   = "Displays Kazuma Wada's profile: name, age, and height."
  spec.homepage      = "https://github.com/KazumaWada"

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
