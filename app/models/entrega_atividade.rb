class EntregaAtividade < ApplicationRecord
  belongs_to :user
  belongs_to :atividade
end
