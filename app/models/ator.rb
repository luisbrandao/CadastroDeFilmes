class Ator < ActiveRecord::Base
  has_and_belongs_to_many :filmes, :join_table => "atores_filmes"

  validates :nome, uniqueness: true, presence: true
  validates :sexo, presence: true

  def sexo_txt
    ["", "Masculino", "Feminino"][self.sexo - 1]
  end

end
