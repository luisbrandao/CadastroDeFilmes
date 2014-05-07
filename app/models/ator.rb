class Ator < ActiveRecord::Base
  has_and_belongs_to_many :filmes, :join_table => "atores_filmes"

  attr_accessible :nome
end
