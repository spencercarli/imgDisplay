class Submit < ActiveRecord::Base
  attr_accessible :link, :title
  validates :title, :presence => true
  validates :link, :presence => true
end
