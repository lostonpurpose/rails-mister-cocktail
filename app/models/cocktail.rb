class Cocktail < ApplicationRecord

  def index
    @cocktails = Cocktail.all
  end
  
end
