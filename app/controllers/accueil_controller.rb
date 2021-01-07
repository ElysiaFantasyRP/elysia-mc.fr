class AccueilController < ApplicationController

  def index
    @articles = Article.all
    # puts @articles.inspect
  end
end

