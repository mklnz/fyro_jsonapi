module FyroJSONAPI
  class ErrorSerializer
    include JSONAPI::Serializer

    set_type :error

    def self.id_from_record(_record, _params); end

    def serializable_hash
      { errors: (super[:data] || []).map { |error| error[:attributes] } }
    end
  end
end
