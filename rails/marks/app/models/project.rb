class Project < ActiveRecord::Base
	has_many :tasks
	has_many :exams
end
