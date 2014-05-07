class Genero < ActiveRecord::Base
  has_many :filmes

  attr_accessible :nome
end
