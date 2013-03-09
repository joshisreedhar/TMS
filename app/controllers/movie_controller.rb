class MovieController < ApplicationController
  def index
  	@movies = Movie.all
  	 render :layout => 'admin'
  end

  def new
  	@certificates = Certificate.all
  	render :layout => 'admin'
  end

  def create
  	@movie = Movie.new
    @movie.name = params[:movie_name]
    @movie.description = params[:description]
    @movie.lead_cast = params[:lead_cast]
    @movie.director = params[:director]
    @movie.duration = params[:duration]
    @movie.large_image_url = params[:large_image_url]
    @movie.producer = params[:producer]
    @movie.small_image_url = params[:small_image_url]
    @movie.certificate_id = params[:certificate_id]
    if @movie.save
      redirect_to :action=>'index'
    else
      render('new')
    end
  end 

  def details
    @movie = Movie.find(params[:id])
      render :layout => 'admin'
  end
end
