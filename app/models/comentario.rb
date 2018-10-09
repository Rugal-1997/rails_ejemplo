class Comentario < ApplicationRecord
  belongs_to :usuario
  belongs_to :tarea
  validates :contenido, presence: true 
end
