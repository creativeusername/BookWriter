module ApplicationHelper

  def user_books
    current_user.books
  end

  def print_chapter_tree(chapter)
      content_tag :ul, :id => "chapter#{chapter.id}", class: "chapter" do
        chapter.title
        chapter.chapters.each {|chapter| print_chapter_tree(chapter)}
      end
  end

end
