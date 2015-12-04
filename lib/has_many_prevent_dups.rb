require 'has_many_prevent_dups/concat'
require 'has_many_prevent_dups/writers'
require 'has_many_prevent_dups/option'

# Allow ActiveRecord to accept the new option.
ActiveRecord::Associations::Builder::Association.valid_options += [:prevent_dups]

# Include the option functionality
ActiveRecord::Base.send(:include, HasManyPreventDups::Option)