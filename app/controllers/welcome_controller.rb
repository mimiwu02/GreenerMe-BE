class WelcomeController < ApplicationController
  def index
   render json: {'Welcome controller': 'Welcome to the Greener Me API'}
  end
end
