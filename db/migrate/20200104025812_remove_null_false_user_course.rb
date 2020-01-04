class RemoveNullFalseUserCourse < ActiveRecord::Migration[5.2]
  def change
    change_column_null :user_courses, :completed, true
  end
end
