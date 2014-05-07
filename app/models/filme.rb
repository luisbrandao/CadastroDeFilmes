class Filme < ActiveRecord::Base
  has_and_belongs_to_many :atores, :join_table => "atores_filmes"

  belongs_to :genero
  belongs_to :midia
  belongs_to :pais
  belongs_to :diretor, class_name: "Diretor"
  has_many :roteiristas, class_name: "Diretor", foreign_key: "roteiro"


  attr_accessible :ano, :cor, :data, :diretor_id, :genero_id, :midia_id, :pais_id, :roteiro, :titulo, :titulorg

end
