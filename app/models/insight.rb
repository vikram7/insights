class Insight < ActiveRecord::Base
  acts_as_taggable

  belongs_to :user

  validates :body,
    presence: true
  validates :user,
    presence: true

  def self.search(query)
    where("body ilike ?", "%#{query}%")
  end

end
