class PagesController < ApplicationController

	def home
	 
	end

	def search_index
		if params[:search]
	    @pictures = Picture.search(params[:search]).order("created_at DESC")
	  else
	    @pictures = Picture.all.order('created_at DESC')
	  end
	end
end