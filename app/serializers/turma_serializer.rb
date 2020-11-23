class TurmaSerializer < ActiveModel::Serializer
  attributes :id, :curso, :descricao, :periodo
  has_one :user
end
