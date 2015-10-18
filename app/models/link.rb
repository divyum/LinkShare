class Link < ActiveRecord::Base
  belongs_to :user
  validates :link, :presence => true, :allow_blank => false
end
