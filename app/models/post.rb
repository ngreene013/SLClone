class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :surf_spot
  validates :user_id, presence: true
  validates :surf_spot_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

end
