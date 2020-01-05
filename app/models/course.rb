class Course < ApplicationRecord
    validates :title, :description, presence: true 
    
    has_many :tag_courses, dependent: :destroy 
    
    has_many :tags,
    through: :tag_courses 

    has_many :lessons, dependent: :destroy

    has_many :enrollments, 
    class_name: :UserCourse,
    foreign_key: :course_id,
    dependent: :destroy  

    has_many :enrolled_users,
    through: :enrollments,
    source: :user 

    def final_lesson 
        self.lessons.find_by(final_lesson: true)
    end 
end 