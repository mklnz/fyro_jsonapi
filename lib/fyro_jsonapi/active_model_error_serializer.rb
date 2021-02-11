module FyroJSONAPI
  class ActiveModelErrorSerializer < ErrorSerializer
    attribute :status, -> { '422' }

    attribute :title do
      Rack::Utils::HTTP_STATUS_CODES[422]
    end

    attribute :source do |object, _params|
      { pointer: "/data/attributes/#{object.attribute}" }
    end

    attribute :detail do |object, _params|
      object.full_message
    end
  end
end
