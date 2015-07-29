class LinksController < ApplicationController
	def redirect
		@link = Link.find_by(short_url: params[:shortlink])
		redirect_to @link.url

	end
	def new 
    	@link = Link.new params[:shortlink]
   	end 

   	def create 
    @link = Link.new entry_params
    
        if @link.save 
	      redirect_to action: 'new', controller: 'links' 
	    else 
	      render 'links/new' 
	    end 
  	end

  	private
  	def entry_params 
        params.require(:link).permit(:short_url) 
    end 
end
