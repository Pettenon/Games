class Game < ActiveRecord::Base
  attr_accessible :category_id, :name, :plataform, :release

  #belongs_to :category
  #belongs_to :plataform
end
