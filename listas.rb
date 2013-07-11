
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
	attr_accessor :restaurantes
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
		@restaurantes.each do |r|
		     puts r.nome
		end
	end

	def relatorio
		@restaurantes.each do |r|
		yield r
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
restaurante_um.nome = "fasano"
#uma forma de passar hash
restaurante_um.fechar_conta(valor: 50, nota: 1, comentario: "Muito ruim")

restaurante_dois = Restaurante.new
restaurante_dois.nome = "fogo de chao"
#outra forma de passar hash
restaurante_dois.fechar_conta :comentario => "SHOW D E BOLA CARO PACAS", :valor => 10000, :nota => 10



franquia = Franquia.new
#com refatore posso pasar um numero variavel de parametros
franquia.adcionar restaurante_um, restaurante_dois

#=begin
# sem refatore no metodo adcionar so posso passar uma qtd especifica
#franquia.adcionar restaurante_um
#franquia.adcionar restaurante_dois
#=end

#passando bloco de codigo
franquia.relatorio do |r|
	puts "restaurante cadsatro: #{r.nome}"
end


franquia.restaurantes.map { |r|  r.nome.capitalize }
franquia.restaurantes.each do |r|
		puts r.nome
	end


franquia.mostra

franquia.restaurantes.map(&:nome).map{|n| puts n,"ZZZ"}


