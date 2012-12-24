class PostsController < InheritedResources::Base


def news_and_events
  @posts = Post.all
end

def press_releases
  @press_releases = PressRelease.all
end

end
