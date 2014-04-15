class AnsVotes < ActiveRecord::Base

  belongs_to :users
  belongs_to :answers

end
