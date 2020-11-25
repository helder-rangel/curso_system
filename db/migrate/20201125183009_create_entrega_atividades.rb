class CreateEntregaAtividades < ActiveRecord::Migration[6.0]
  def change
    create_table :entrega_atividades do |t|
      t.string :link
      t.references :user, null: false, foreign_key: true
      t.references :atividade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
