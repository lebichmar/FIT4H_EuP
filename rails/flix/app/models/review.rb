class Review < ActiveRecord::Base
  belongs_to :movie

  HOW_HEARD_OPTIONS = ['Newsletter', 'Twitter', 'Web Search', 'Other']

	validates :how_heard, inclusion: { in: HOW_HEARD_OPTIONS }
end
