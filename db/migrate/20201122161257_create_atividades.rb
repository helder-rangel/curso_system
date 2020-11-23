class CreateAtividades < ActiveRecord::Migration[6.0]
  def change
    create_table :atividades do |t|
      t.string :descricao
      t.boolean :status
      t.string :link
      t.references :turma, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
