class Blog < ActiveRecord::Base
	has_many :blog_comments, as: :commentable
end
