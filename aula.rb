#encoding:utf-8

class Aula

	attr_accessor :msg
	def comecar(msg)
	 	puts "A aula comecou #{@msg} "
	end


#Escopo da variavel exemplo

	def teste(valor)
		if(valor < 10)
		 var = false
		end
	#ddetalhe eu consigo acessar uma variavel que foi decarada no if fora dele pois o seu escopo é 
         #valido pelo metodo e nao pelo if

              puts var
	
	end
end

hoje = Aula.new
