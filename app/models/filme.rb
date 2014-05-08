class Filme < ActiveRecord::Base
  has_and_belongs_to_many :atores, :join_table => "atores_filmes"
  has_and_belongs_to_many :diretores, :join_table => "diretores_filmes"
  has_and_belongs_to_many :roteiristas, :join_table => "roteiristas_filmes"

  belongs_to :genero
  belongs_to :midia
  belongs_to :pais

  attr_accessible :id, :anoA, :anoF, :cor, :cotacao, :dataA, :genero_id, :midia_id, :pais_id, :titulo, :titulorg
  attr_accessible :ator_ids, :diretor_ids

  validates :nome, presence: true
end
