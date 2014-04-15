class Answer < ActiveRecord::Base

  validates :content, :presence => true

  belongs_to :user
  has_many :ans_votes
end
