module HasManyPreventDups
  module Option
    extend ActiveSupport::Concern

    class_methods do

      # Override ActiveRecord's :has_many macro to allow for the 
      # additional option preventing the insertion of duplicate
      # join table records.
      def has_many(name, scope = nil, options = {}, &extension)

        if scope.is_a?(Hash)
          options = scope
          scope   = nil
        end

        if options[:prevent_dups] == true
          _prevent_dups_reflections << name

          options[:extend] ||= []
          options[:extend] = [options[:extend]] unless options[:extend].kind_of?(Array)
          options[:extend].push HasManyPreventDups::Concat # Overrides the CollectionProxy methods
          
          super(name, scope, options, &extension)
          
          HasManyPreventDups::Writers.build(self, name) # Overrides the collection= and collection_ids= methods
        else
          super
        end
      end

      # Saving the associations for testing.
      def _prevent_dups_reflections
        @_prevent_dups_reflections ||= []
      end
    end
  end
end