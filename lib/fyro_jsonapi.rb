require 'jsonapi/serializer'
require 'fyro_jsonapi/rails'
require 'fyro_jsonapi/renderer'
require 'fyro_jsonapi/error_serializer'
require 'fyro_jsonapi/active_model_error_serializer'
require 'fyro_jsonapi/error_renderer'
require 'fyro_jsonapi/version'

module FyroJSONAPI
  class Error < StandardError; end

  MEDIA_TYPE = 'application/vnd.api+json'.freeze
end
