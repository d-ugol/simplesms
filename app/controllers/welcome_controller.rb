class WelcomeController < ApplicationController

	skip_before_action :verify_authenticity_token  

  def index
  	# render the index.html.erb page
  end

  # DU. Add code to controller for POST

  def sms
  	
  	#flash[:notice] = params
  	#redirect_to root_path

    TwilioTextMessenger.new( params[:phone], params[:message]).call
  	
  end
end
