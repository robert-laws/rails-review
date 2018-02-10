require 'pry'

class StaticController < ApplicationController
  def about
    @message = "This is just plain about"
  end

  def comment
    @comment = params[:comment]
  end

  def welcome
    id = params[:name_id]

    if id == "1"
      @message = "Hello Bob"
    else
      @message = "Hello unknown person"
    end
  end
end