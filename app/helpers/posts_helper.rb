module PostsHelper
  def get_parts(post)
    parts = post.parts
    parts.blank? ? [Part.new] : parts
  end
end
