class Roteirista < ActiveRecord::Base
  has_and_belongs_to_many :filmes, :join_table => "roteiristas_filmes"

  attr_accessible :nome
end
