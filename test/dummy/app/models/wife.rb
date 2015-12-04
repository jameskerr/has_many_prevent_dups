class Wife < ActiveRecord::Base
  has_many :marriages
  has_many :husbands, through: :marriages, prevent_dups: true, dependent: :destroy do
    def love
      "Polyandry"
    end
  end
end
