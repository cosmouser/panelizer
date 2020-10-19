require_relative 'lib/panelizer/version'

Gem::Specification.new do |spec|
  spec.name          = "panelizer"
  spec.version       = Panelizer::VERSION
  spec.authors       = ["Cosmo Martinez"]
  spec.email         = ["axcmartinez@gmail.com"]

  spec.summary       = %q{Matches grant applicants with panelists.}
  spec.description   = %q{Panelizer matches grant applicants with a set of panelists based off of media affinities.}
  spec.homepage      = "https://cosmouser.github.io/panelizer"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cosmouser/panelizer.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
