class Announcement < ApplicationRecord
	validates :start_registration, presence: false
	validates :end_registration, presence: false
	validates :start_date, presence: false
	validates :end_date, presence: false

	validate :end_after_start_registration
	validate :course_after_registration
	validate :end_after_start_course
	validate :start_date_cannot_be_in_the_past

	
	def end_after_start_registration
		if end_registration < start_registration 
    	  errors.add(:start_registration, "Se acaba el registro antes de empezar")
    	end
  	end
	
  	def course_after_registration
		if end_registration > start_date  
    	  errors.add(:start_date, "Se empieza curso antes de acabar registro")
    	end
  	end

  	def end_after_start_course
		if end_date < start_date 
    	  errors.add(:start_date, "Se acaba el curso antes de empezar")
    	end
  	end

	def start_date_cannot_be_in_the_past
	    if start_registration.present? && start_registration < Date.today
	      errors.add(:start_registration, "can't be in the past")
	    end
	end

end
