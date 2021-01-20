# frozen_string_literal: true

# Controlleur pour l'accueil

class AccueilController < ApplicationController
  def index
    @articles = Article.all
    # puts @articles.inspect
  end
end
