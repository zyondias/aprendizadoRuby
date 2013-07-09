
#array
nomes = []
#passando valor
nomes[0] = "Fasano"
#outra formar de passar valor
nomes <<"Fogo de chao"

#percorendo array
for nome in nomes
	puts nome
end



class Franquia 

	def initialize
		@restaurantes = []
	end
	#metodo adcioanr com refatore
	def adcionar(*restaurantes)
		for restaurante in restaurantes	
			@restaurantes<< restaurante
		end
	end

	def mostra
		for restaurante in @restaurantes
		  puts restaurante.nome
		end
	end
end

class Restaurante 
	#set e get de propriedades
	attr_accessor :nome
	#metodo recebendo hash
	def fechar_conta(dados)
		puts "Conta fechada no valor #{dados[:valor]} e com a nota #{dados[:nota]}. comentario: #{dados[:comentario]}"
	end
end

restaurante_um = Restaurante.new
restaurante_um.nome = "Fasano"
#uma forma de passar hash
restaurante_um.fechar_conta(valor: 50, nota: 1, comentario: "Muito ruim")

restaurante_dois = Restaurante.new
restaurante_dois.nome = "Fogo de chao"
#outra forma de passar hash
restaurante_dois.fechar_conta :comentario => "SHOW D E BOLA CARO PACAS", :valor => 10000, :nota => 10


franquia = Franquia.new
#com refatore posso pasar um numero variavel de parametros
franquia.adcionar restaurante_um, restaurante_dois

=begin
 sem refatore no metodo adcionar so posso passar uma qtd especifica
franquia.adcionar restaurante_um
franquia.adcionar restaurante_dois
=end
franquia.mostra
