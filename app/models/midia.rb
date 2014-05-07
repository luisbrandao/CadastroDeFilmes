class Midia < ActiveRecord::Base
  has_many :filmes

  attr_accessible :id, :nome
end
