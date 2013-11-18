class PostsController < ActionController::Base
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new(params[:post])
    @post.save
    redirect_to :action => "show", :id => @post.id
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    redirect_to :action => "show", :id => @post.id
  end

  private
    def post_params
      params.require(:post).permit(:title, :text)
    end

end
