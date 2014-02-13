class Comment < ActiveRecord::Base
  #comment relates to a single article
  belongs_to :article
end
