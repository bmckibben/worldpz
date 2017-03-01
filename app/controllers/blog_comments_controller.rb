class BlogCommentsController < ApplicationController
  before_action :set_blog_comment, only: [:show, :edit, :update, :destroy]
  before_action :find_commentable, only: [:create, :post_blog_comment]

  # GET /blog_comments
  # GET /blog_comments.json
  def index
    @blog_comments = BlogComment.all
  end

  # GET /blog_comments/1
  # GET /blog_comments/1.json
  def show
  end

  # GET /blog_comments/new
  def new
    @blog_comment = BlogComment.new
  end

  # GET /blog_comments/1/edit
  def edit
  end

  # POST /blog_comments
  # POST /blog_comments.json
  def create
    @blog_comment = @commentable.blog_comments.new(blog_comment_params)
    
    # default publish flage to 0
    @blog_comment.publish = 0
    
    respond_to do |format|
      if @blog_comment.save
        format.html { redirect_to @blog_comment, notice: 'Blog comment was successfully created.' }
        format.json { render :nothing => true, :status => 200}
      else
        format.html { render :new }
        format.json { render :nothing => true, status: :unprocessable_entity }
      end
    end
  end

  # POST /post_blog_comment
  # POST /post_blog_comment.json
  def post_blog_comment
    #@blog_comment = BlogComment.new(params[:body], params[:commentable_id])
    #@blog_comment.commentable_type = "Reply"
    #@blog_comment.publish = 0 #do not publish until reviewed
    @blog_comment = @commentable.blog_comments.new(blog_comment_params)
    @blog_comment.save
    render :nothing => true, :status => 200
  end

  # PATCH/PUT /blog_comments/1
  # PATCH/PUT /blog_comments/1.json
  def update
    respond_to do |format|
      if @blog_comment.update(blog_comment_params)
        format.html { redirect_to @blog_comment, notice: 'Blog comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_comment }
      else
        format.html { render :edit }
        format.json { render json: @blog_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_comments/1
  # DELETE /blog_comments/1.json
  def destroy
    @blog_comment.destroy
    respond_to do |format|
      format.html { redirect_to blog_comments_url, notice: 'Blog comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_comment
      @blog_comment = BlogComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_comment_params
      params.require(:blog_comment).permit(:body, :commentable_id, :commentable_type, :publish)
    end

    def find_commentable
     
      @commentable = BlogComment.find_by_id(params[:blog_comment_id]) if params[:blog_comment_id]
      @commentable = Blog.find_by_id(params[:blog_id]) if params[:blog_id]
    end


end
