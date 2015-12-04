class Marriage < ActiveRecord::Base
  belongs_to :husband
  belongs_to :wife

  validates_uniqueness_of :husband_id, scope: [:wife_id]
end
