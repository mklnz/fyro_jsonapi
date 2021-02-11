module FyroJSONAPI
  module Rails
    def self.install!
      Mime::Type.register MEDIA_TYPE, :jsonapi

      parser = ActionDispatch::Request.parameter_parsers[:json]
      ActionDispatch::Request.parameter_parsers[:jsonapi] = parser

      add_renderers!
    end

    def self.add_renderers!
      ActionController::Renderers.add(:jsonapi) do |resource, _options|
        self.content_type ||= Mime[:jsonapi]
        FyroJSONAPI::Renderer.new(resource).render
      end

      ActionController::Renderers.add(:jsonapi_errors) do |resource, _options|
        self.content_type ||= Mime[:jsonapi]
        FyroJSONAPI::ErrorRenderer.new(resource).render
      end
    end
  end
end
