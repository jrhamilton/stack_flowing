class User < ActiveRecord::Base
  has_secure_password

  validates_uniqueness_of :email

  validates_presence_of :email, :presence => true
  validates_presence_of :password_digest, :presence => true

  has_many :questions
  has_many :answers
  has_many :ans_votes
  has_many :quest_votes


end
