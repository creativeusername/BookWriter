class Chapter < ActiveRecord::Base
  belongs_to :book
  belongs_to :chapter
  has_many :chapters
  has_many :chunks
  attr_accessible :position, :title, :chunks

  validates_presence_of :title, :position
  validates_uniqueness_of :title, :position

end
