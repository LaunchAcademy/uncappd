class Beer < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :style, presence: true
  validates :description, presence: true
  validates :rating, presence: true
end
