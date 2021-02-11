module FyroJSONAPI
  class ErrorRenderer
    attr_reader :errors

    def initialize(errors, _options = {})
      @errors = errors
    end

    def render
      serializer = if errors.is_a? ActiveModel::Errors
                     ActiveModelErrorSerializer
                   else
                     ErrorSerializer
                   end

      serializer.new(errors).serializable_hash.to_json
    end
  end
end
