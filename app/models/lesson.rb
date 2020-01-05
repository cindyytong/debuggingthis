class Lesson < ApplicationRecord 
    validates :title, presence: true 
    validates :final_lesson, inclusion: [true, false]
    
    belongs_to :course 

    has_many :user_enrollments, 
    class_name: :UserLesson,
    foreign_key: :lesson_id,
    dependent: :destroy

    has_many :users,
    through: :user_enrollments,
    source: :user

end 