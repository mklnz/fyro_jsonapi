module FyroJSONAPI
  class Renderer
    attr_reader :resource

    def initialize(resource, _options = {})
      @resource = resource
    end

    def render
      return { data: [] }.to_json if collection? && resource.empty?

      serializer.new(resource).serializable_hash.to_json
    end

    protected

    def collection?
      resource.respond_to?(:size) && !resource.respond_to?(:each_pair)
    end

    def serializer
      model = collection? ? resource.first.class : resource.class
      "#{model.name}Serializer".constantize
    end
  end
end
