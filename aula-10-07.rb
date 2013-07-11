class Pessoa

	#geters
	attr_reader :nome
	#seters
	attr_writer :nome
	#seter e get
	attr_accessor :nome

	def initialize(nome)
		#propriedade que vale para todas as instancias da classe pessoa criada com @@
		#@@total_pessoas ||= 0
		#@@total_pessoas = @@total_pessoas + 1
		self.class.nova

		@nome = nome		
	end

	def total_pessoas
		@@total_pessoas
	end

	#metodo que pode ser chamado direto da classe sem ser pela instancia Pessoa.no_mundo
	def self.no_mundo
		@@total_pessoas
	end
	#ou
	class << self
		def mundo
			@@total_pessoas
		end

		def nova
			@@total_pessoas ||= 0
			@@total_pessoas = @@total_pessoas + 1
		end
	end

end


jose = Pessoa.new("MARIA")
puts jose.nome
puts Pessoa.no_mundo
puts Pessoa.mundo
#puts jose.total_pessoas
jose.nome = "FEFITO".capitalize
puts jose.nome

maria = Pessoa.new("fasdfas")
#puts jose.total_pessoas
puts Pessoa.no_mundo
puts Pessoa.mundo
