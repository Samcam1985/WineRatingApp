class WinesController < ApplicationController

  def index
    wines = Wine.all
    render :json => wines
  end

  def create
    wine = Wine.create( {
      name: params[:name],
      colour: params[:colour],
      country: params[:country],
      year: params[:year],
      image: params[:image]
    })
    render :json => wine
    
  end

  def show
    wine = Wine.find( params[:id] )
    render :json => wine
end
end
