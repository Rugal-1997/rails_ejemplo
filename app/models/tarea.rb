class Tarea < ApplicationRecord
	belongs_to :usuario
	validates :titulo, presence: true
	validates :descripcion, presence: true
end
