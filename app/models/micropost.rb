class Micropost < ActiveRecord::Base
  #only have attributes that you need web access to for each model
  # here we can remove the :user_id attr_accessible.
  #because we need to be secure.
  attr_accessible :content #, :user_id
  belongs_to :user

  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true

  default_scope order: 'microposts.created_at DESC'
end
