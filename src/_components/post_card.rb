class PostCard < Bridgetown::Component
  def initialize(post)
    @post = post
  end

  def render?
    @post.data.published == true
  end
end
