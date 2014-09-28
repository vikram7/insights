class Tag < ActiveRecord::Base
  has_many :insights
  belongs_to :insight

  validates :name,
  presence: true, uniqueness: true
end
