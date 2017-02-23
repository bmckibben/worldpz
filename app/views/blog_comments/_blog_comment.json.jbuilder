json.extract! blog_comment, :id, :body, :commentable_id, :commentable_type, :created_at, :updated_at
json.url blog_comment_url(blog_comment, format: :json)
