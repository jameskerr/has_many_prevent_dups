module WritersTest
  
  def test_collection=
    each_association do |collection|
      item = send(collection, :one)
      @object.send("#{collection}=", [item, item])
      assert_equal 1, @object.send(collection).length
    end
  end

  def test_collection_singular_ids=
    each_association do |collection|
      item = send(collection, :one)
      @object.send("#{collection.to_s.singularize}_ids=", [item.id, item.id, item.id])
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