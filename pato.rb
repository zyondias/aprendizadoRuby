class Pato

	def come
		puts "comendo"
	end
	def quaca
		puts "queque"
	end
end

class Tratador
	def alimenta(pato)
		pato.come
	end
	def castiga(pato)
		pato.quaca
	end
end

#eranca de classe
class Orni
	def quaca
		puts "te te te"
		#executando o metodo da classe mae
		#super		
	end

	def come
		puts "Comedo rapido"
	end
end

pato = Pato.new
tratador =  Tratador.new
orni = Orni.new

tratador.alimenta(pato)
tratador.castiga(pato)

tratador.castiga(orni)
tratador.alimenta(orni)

puts  212.class.ancestors
