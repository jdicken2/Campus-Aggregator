class SessionsController < ApplicationController

	def new
	end

	def create
	    user=User.find_by(email: params[:session][:email].downcase)
	    if user && user.authenticate(params[:se	       ssion][:password])
	    else
 	       flash[:danger]='Invalid email/passwo		  rd combination'
	       render 'new'
	    end	       
	end

	def destroy
		log_out
		redirect_to root_url
	end
     end 
