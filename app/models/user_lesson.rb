class UserLesson < ApplicationRecord 
    validates :completed, inclusion: [true, false]
    
    belongs_to :user
    belongs_to :lesson 

    def complete_lesson
        self.update(completed: true) 
        if self.lesson.final_lesson == true 
            course = self.lesson.course 
            user_course = UserCourse.find_by(course_id: course.id)
            user_course.complete_course    
        end 
        self
    end 
end 