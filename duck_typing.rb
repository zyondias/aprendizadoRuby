class Franquia
	def info
		puts "Restaurantne faz parte da fanquia"
	end

end

class Restaurante < Franquia
	def info
	  super
	  puts "Restaurante fasano"	
	end

end

#metodo que receber a franquia para invocar a info
def informa(franquia)
	franquia.info
end

bar = Restaurante.new
informa bar
