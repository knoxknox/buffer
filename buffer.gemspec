Gem::Specification.new do |s|
  s.name = 'buffer'
  s.version = '1.0.0'
  s.licenses = ['MIT']

  s.author = 'Alex Y.'
  s.email = 'alexandr_y@mail.ru'
  s.summary = 'Bytes manipulation in Ruby'
  s.homepage = 'https://github.com/knoxknox/buffer'
  s.description = 'Functions for the manipulation of byte slices in Ruby'

  s.require_paths = ['lib']
  s.files = Dir['lib/**/*.rb']
  s.platform = Gem::Platform::RUBY
end
