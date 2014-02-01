require "json_paths/version"
require 'json'

class JsonPaths
  include Enumerable

  attr_reader :json
  attr_reader :paths

  def initialize(json)
    @json = json

    @paths = json_to_paths
  end

  def each
    paths.each
  end

  def json_to_paths
    parsed_json = JSON.parse(json)
    paths = []

    parsed_json.each_key do |key|
      paths << key_to_path(parsed_json, key)
    end

    paths.flatten.map { |path| "$." + path }
  end

  def key_to_path(hash, key)
    paths_for_key = []
    value = hash[key]

    if value.respond_to?(:keys)
      paths_for_key << value.each_key do |k|
        key_to_path(value, k).map { |ktp| key + "." + ktp }
      end.flatten
    elsif value.respond_to?(:each_with_index)
      value.each_with_index do |v,i|
        paths_for_key << JsonPaths.new(v.to_json).paths.map do |j|
          "#{key}[#{i}].#{j.gsub('$.', '')}"
        end
      end
    else
      paths_for_key << key.to_s
    end

    paths_for_key
  end
end
