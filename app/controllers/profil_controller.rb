class ProfilController < ApplicationController
    
    def index
        
    end
    
    def load
        pseudo = params[:pseudo]
        cookies.signed[:pseudo] = pseudo
        redirect_to accueil_index_path
    end

    def reset
        pseudo = cookies.signed[:pseudo]
        if (!pseudo.nil?)
            cookies.delete :pseudo
            redirect_to accueil_index_path
        else
            redirect_to accueil_index_path
        end
    end
end
