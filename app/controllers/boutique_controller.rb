class BoutiqueController < ApplicationController
    def index
        @categories = Categorie.all
    end
end