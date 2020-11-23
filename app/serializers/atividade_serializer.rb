class AtividadeSerializer < ActiveModel::Serializer
  attributes :id, :descricao, :status, :link
  has_one :turma
  has_one :user
end
