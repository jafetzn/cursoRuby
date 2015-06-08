module ApplicationHelper
	#agregando metodos para comportamientos visuales
	def flash_class(type)
		case type
		when :alert
			"alert-danger"
		
		when :notice
			"alert-info"
		
		when :warning
			"alert-warning"
		end
	end
end
