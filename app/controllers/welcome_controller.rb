class WelcomeController < ApplicationController
def index
	@posts = @posts = Post.all.order('created_at DESC').limit(3)
end

end
