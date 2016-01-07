module ProjectsHelper

	def einz_mehrz
		if @project.size == 1
			"Inhalt"
		else
			"Inhalte"
		end
	end



end
