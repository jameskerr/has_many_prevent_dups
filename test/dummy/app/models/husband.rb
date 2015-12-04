module MyAssociationExtension
  def love
    "Polygyny"
  end
end

class Husband < ActiveRecord::Base
  has_many :marriages
  has_many :wives, through: :marriages, prevent_dups: true, dependent: :destroy, extend: MyAssociationExtension
end
