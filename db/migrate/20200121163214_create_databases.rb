class CreateDatabases < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.column(:user_name, :string)
    end
    create_table :questions do |t|
      t.column(:title, :string)
      t.column(:description, :string)
    end
    create_table :answers do |t|
      t.column(:answer_field, :string)
    end
    create_table :upvotes, id: false do |t|
    
      t.belongs_to :answer, index: true
      t.belongs_to :question, index: true
    end
  end
end
