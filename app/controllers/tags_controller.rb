class TagsController < ApplicationController

	def show
		@tag = Tag.find(params[:id])		
	end

#create index action
	def index
		@tags = Tag.all
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
	end

end
