class Tarea < ApplicationRecord
	belongs_to :usuario
	has_many :comentarios
	validates :titulo, presence: true
	validates :descripcion, presence: true
end
