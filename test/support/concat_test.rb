module ConcatTest

  def test_collection_shovel
    each_association do |collection|
      item = send(collection, :one)
      @object.send(collection) << item
      @object.send(collection) << item
      @object.send(collection) << [ item, item ]
      assert_equal 1, @object.send(collection).length
    end
  end

  def test_collection_push
    each_association do |collection|
      item = send(collection, :one)
      @object.send(collection).push item
      @object.send(collection).push item
      @object.send(collection).push [ item, item ]
      assert_equal 1, @object.send(collection).length
    end
  end

  def test_collection_concat
    each_association do |collection|
      item = send(collection, :one)
      @object.send(collection).concat item
      @object.send(collection).concat item
      @object.send(collection).concat [ item, item ]
      assert_equal 1, @object.send(collection).length
    end
  end

  private
    def each_association
      @object.class.send(:_prevent_dups_reflections).each do |collection|
        yield(collection)
      end
    end
end