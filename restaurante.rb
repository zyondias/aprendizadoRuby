#encoding:utf-8


class Restaurante
	attr_accessor :nota
	def initialize(nome)
		puts "criando um novo restaurate #{nome}"	
		@nome = nome
	end

	def qualifica(msg="Obrigad")
		puts "A nota do #{@nome} foi #{@nota} . #{msg}\n"
	end	
	#propriedade
	#def nota=(nota)
	#	@nota = nota
	#end
	#def nota
	#	@nota
	#end NAO FOI NECESSARIO FAZER POIS ESTOU UTILIZANDO O ATTR_ACESSOR
end

restaurante_um = Restaurante.new("Fasano")
restaurante_dois = Restaurante.new("Fogo de chao")

restaurante_um.nota = 10
restaurante_dois.nota = 1

restaurante_um.qualifica
restaurante_dois.qualifica("Ruim")



