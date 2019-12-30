class UserCourse < ApplicationRecord 
    validates :completed, presence: true, inclusion: [true, false]

    belongs_to :user 
    belongs_to :course 
end 