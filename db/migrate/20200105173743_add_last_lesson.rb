class AddLastLesson < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :final_lesson, :boolean, default: false 
  end
end
