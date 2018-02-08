class StaticController < ApplicationController
  def about
    @message = "This is just plain about"
  end

  def aboutus
    @message = "This is the longer about us title"
  end
end