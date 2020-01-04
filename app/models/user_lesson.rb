class UserLesson < ApplicationRecord 
    validates :completed, inclusion: [true, false]
    
    belongs_to :user
    belongs_to :lesson 
end 