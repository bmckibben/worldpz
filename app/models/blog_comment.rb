class BlogComment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  has_many :blog_comments, as :commentable	
end
