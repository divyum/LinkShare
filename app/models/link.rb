class Link < ActiveRecord::Base
  belongs_to :user
  validates :link, :presence => true, :allow_blank => false, uniqueness: { scope: :user_id,
    message: "already present" }
end
