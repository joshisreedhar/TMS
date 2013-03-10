class NowShowingController < ApplicationController
  def index
  	@movies = Movie.all
  	@moviedetails = Movie.all
  	@certificates = Certificate.all  	
  	@movies.each do |movie|  
  	if movie.certificate_id  			
  		certificate = Certificate.find(movie.certificate_id)  		
  		movie.name = "#{movie.name}, #{certificate.name}";
  	else
  		movie.name = "#{movie.name}"
  	end
  	end 
  end
end
