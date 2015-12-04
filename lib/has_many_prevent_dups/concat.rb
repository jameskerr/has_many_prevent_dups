module HasManyPreventDups
  module Concat
    # @wife.husbands << Husband.create
    def <<(*records)
      super(records.flatten.reject{|r| include?(r) })
    end

    # @wife.husbands.concat Husband.create
    def concat(*records)
      self << records
    end
    
    # @wife.husbands.push Husband.create
    def push(*records)
      self << records
    end
  end
end