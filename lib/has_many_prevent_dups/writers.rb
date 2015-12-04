module HasManyPreventDups
  class Writers

    def self.build(model, collection)

      # @wife.husbands=
      model.send(:define_method, "#{collection}=") do |value|
        super(value.uniq)
      end

      # @wife.husband_ids=
      model.send(:define_method, "#{collection.to_s.singularize}_ids=") do |value|
        super(value.uniq)
      end
    end

  end
end