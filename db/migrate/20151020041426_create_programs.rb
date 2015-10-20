class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.string :end_date
      t.date :application_deadline
      t.string :website
      t.string :school
      t.text :other_requirements
      t.timestamps
    end
  end
end
