class Article < ActiveRecord::Base
	#article has many comments
	has_many :comments
end
