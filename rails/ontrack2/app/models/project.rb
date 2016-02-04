class Project < ActiveRecord::Base

has_many :tasks

validates :title, presence: true 
validates :description, presence: true, uniqueness: true


end

