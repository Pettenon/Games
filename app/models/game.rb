class Game < ActiveRecord::Base
  attr_accessible :category_id, :name, :plataform, :release
end
