class LinksController < ApplicationController
	def redirect
		@link = Link.find_by(short_url: params[:shortlink])
		redirect_to @link.url

	end
end
