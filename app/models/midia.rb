class Midia < ActiveRecord::Base
  has_many :filmes

  attr_accessible :id, :nome

  validates :nome, uniqueness: true, presence: true
end
