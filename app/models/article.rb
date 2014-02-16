class Article < ActiveRecord::Base
	#article has many comments
	has_many :comments
	has_many :taggings
	has_many :tags, through: :taggings
end
