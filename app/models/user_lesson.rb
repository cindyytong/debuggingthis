class UserLesson < ApplicationRecord 
    validates :completed, presence: true, inclusion: [true, false]
    
    belongs_to :user
    belongs_to :lesson 
end 