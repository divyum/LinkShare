class Link < ActiveRecord::Base
  acts_as_taggable
  belongs_to :user
  validates :link, :presence => true, :allow_blank => false, uniqueness: { scope: :user_id,
    message: "already present" }
  validates :description, :presence => true, :allow_blank => false, :length => { in:5..140 }
end
