class Book < ActiveRecord::Base

  attr_accessible :title, :edition, :published, :genre, :abstract, :tags, :user_ids, :closed

  has_and_belongs_to_many :users
  has_many :chapters

  validates_presence_of :title, :edition
  validates :edition, :uniqueness => {:scope => :title}

  before_destroy :destroy_chapters

  def sliced_attributes
    attributes.slice('title', 'genre', 'abstract', 'tags')
  end

  def published?
    !published.nil?
  end

  def has_chapters?
    !chapters.empty?
  end

  def users_list
    users.collect { |u| u.username }.join(',')
  end

  def users_list_real_names
    users.collect { |u| u.first_name + ' ' + u.last_name }.join(',')
  end

  private
  def destroy_chapters
    chapters.each do |chapter|
      chapter.destroy
    end
  end

end