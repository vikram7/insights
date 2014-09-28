class Insight < ActiveRecord::Base
  has_many :tags
  belongs_to :tag
  belongs_to :user

  validates :body,
    presence: true
  validates :user,
    presence: true
end
