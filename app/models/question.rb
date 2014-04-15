class Question < ActiveRecord

  validates :presence => true

  belongs_to :user
  has_many :quest_votes

end
