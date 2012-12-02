class StaticPagesController < ApplicationController
  def about
    respond_to do |format|
      format.html
    end
  end

  def help
  end
end
