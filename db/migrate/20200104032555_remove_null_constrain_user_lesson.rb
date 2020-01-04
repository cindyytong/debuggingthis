class RemoveNullConstrainUserLesson < ActiveRecord::Migration[5.2]
  def change
    change_column_null :user_lessons, :completed, true 
  end
end
