class UserCourse < ApplicationRecord 
    validates :completed, inclusion: [true, false]
    
    belongs_to :user 
    belongs_to :course 

    def complete_course 
        self.update(completed: true) 
        self
    end 
end 