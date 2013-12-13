class Chapter < ActiveRecord::Base
  belongs_to :book
  belongs_to :parent, :class_name => :chapter, :foreign_key => "parent_id"
  has_many :chapters
  has_many :chunks
  attr_accessible :position, :title

  validates_presence_of :title, :position
  validates_uniqueness_of :title, :position

  def has_chunks?
    !chunks.empty?
  end

end
