class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :rank

      t.timestamps
    end

    create_table :questions do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.integer :rank

      t.timestamps
    end

    create_table :answers do |t|
      t.integer :user_id
      t.text :content
      t.integer :rank

      t.timestamps
    end

    create_table :quest_votes do |t|
      t.integer :question_id
      t.integer :user_id

      t.timestamps
    end

    create_table :ans_votes do |t|
      t.integer :answer_id
      t.integer :user_id

      t.timestamps
    end
  end
end
