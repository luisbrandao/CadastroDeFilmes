class Diretor < ActiveRecord::Base
  has_and_belongs_to_many :filmes, :join_table => "diretores_filmes"

  validates :nome, uniqueness: true, presence: true
end
