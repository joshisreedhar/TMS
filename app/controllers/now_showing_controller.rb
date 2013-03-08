class NowShowingController < ApplicationController
  def index
  	@movies = Movie.all
  end
end
