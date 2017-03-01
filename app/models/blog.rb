class Blog < ActiveRecord::Base
	has_many :blog_comments, -> { where(publish: 1) }, as: :commentable
end
