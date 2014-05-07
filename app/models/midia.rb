class Midia < ActiveRecord::Base
  attr_accessible :nome

  has_many :filmes
end
