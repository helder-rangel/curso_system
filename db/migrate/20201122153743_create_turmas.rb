class CreateTurmas < ActiveRecord::Migration[6.0]
  def change
    create_table :turmas do |t|
      t.string :curso
      t.string :descricao
      t.string :periodo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
