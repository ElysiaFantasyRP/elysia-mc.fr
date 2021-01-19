class BoutiqueController < ApplicationController
    def index
      @categories = Categorie.all
      init_cart 
    end

    def show
        @items = Item.where(categorie_id: params[:categorie_id])
        flash[:item_ids] = @items.ids
        redirect_to boutique_index_path
    end
    
    def init_cart

        if session[:cart_length].nil?
            session[:cart_length] = 0
        end
    end

    def add_item_to_cart
        init_cart
        if session[:items_id].nil?
            session[:items_id] = Array.new
        end
        item_id = params[:item_id]
        session[:items_id] << item_id
        puts "------"
        puts session[:items_id]

        session[:cart_length] = session[:items_id].length
        redirect_to boutique_index_path
    end

    def cart
        render "boutique/cart"
    end
end