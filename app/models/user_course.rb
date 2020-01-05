class UserCourse < ApplicationRecord 
    validates :completed, inclusion: [true, false]
    

    belongs_to :user 
    belongs_to :course 
end 