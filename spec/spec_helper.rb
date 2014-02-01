require 'bundler'

Bundler.require :default, :test

$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'json_paths'

RSpec.configure do |config|
end
