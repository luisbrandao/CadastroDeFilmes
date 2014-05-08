class Diretor < ActiveRecord::Base
  has_and_belongs_to_many :filmes, :join_table => "diretores_filmes"

  attr_accessible :id, :nome

  validates :nome, uniqueness: true, presence: true
end
