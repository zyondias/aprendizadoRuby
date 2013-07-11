class Restaurante
	def initialize(nome)
		puts "criando um novo restaurante: #{nome}"
		self.class.novo_restaurante
		self.class.relatorio
		
		@nome = nome
	end

class << self
	def relatorio
		puts "Restaurante criando: #{@@total}"
	end
	def novo_restaurante
		@@total ||=0
		@@total = @@total +1
	end
end

end

bar_fefito = Restaurante.new("nando")
