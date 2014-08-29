class Filme < ActiveRecord::Base
  has_and_belongs_to_many :atores, :join_table => "atores_filmes"
  has_and_belongs_to_many :diretores, :join_table => "diretores_filmes"
  has_and_belongs_to_many :roteiristas, :join_table => "roteiristas_filmes"

  belongs_to :genero
  belongs_to :midia
  belongs_to :pais

  validates :titulo, presence: true
end
