class Level < ActiveRecord::Base
  has_many :courses, inverse_of: :level
end
