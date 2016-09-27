class EncodingsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  #Shouldn't have to do this with database work - just doing this for right now


  def index
  end

  def new
  end

  def show
    # From our form - we get a hash =====> params= {'message' => 'hello world', 'shift' => 's'}
    @message = Caesar.encode(params[:shift], params[:message])
  end
end
