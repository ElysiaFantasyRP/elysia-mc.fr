class AccueilController < ApplicationController

  def index
    @articles = Article.all.order(id: :desc)
    # puts @articles.inspect
  end
end

