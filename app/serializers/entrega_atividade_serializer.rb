class EntregaAtividadeSerializer < ActiveModel::Serializer
  attributes :id, :link,  :created_at, :updated_at
  has_one :user
  has_one :atividade
end
