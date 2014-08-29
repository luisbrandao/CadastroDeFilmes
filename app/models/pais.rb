class Pais < ActiveRecord::Base
  has_many :filmes

  validates :nome, uniqueness: true, presence: true
end
