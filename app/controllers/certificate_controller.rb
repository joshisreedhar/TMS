class CertificateController < ApplicationController
  def index
  	@certificates = Certificate.all
  end

  def new
  end

  def create
  	@certificate = Certificate.new
  	@certificate.name = params[:certificate_name]

  	if @certificate.save
  		 redirect_to :action => "index"
  	else
  		render('new')
  	end

  end
end
