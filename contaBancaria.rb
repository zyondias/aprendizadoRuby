#encoding:utf-8


class Conta
	#não é preciso definir o atributo
	#@@saldo
	
	#metodo para deixar dispoivel o get d saldo para objetos, inves de ciar um metodo "def saldo @saldo end"
	attr_reader :saldo
	attr_writer :saldo #mesma ideia do metodo de sema mas para poder escrever usuando o '='

	#attr_accessor :saldo #metodo definde attr_reader e attr_writer para variavel 
	
	#metodo de inicializacao da classe (construtor)
	def initialize(saldo=0, titular)
		@saldo=saldo
		@titular = titular
	end

	def depositar(valor)         
        	@saldo += valor
	end

	def sacar(valor)
	 	@saldo -=valor
	end
end

class Pessoa

	def abre_conta(saldoinicial)
		@conta = Conta.new(saldoinicial, self)
	end

end


conta_zyon = Conta.new(10.00)
	
conta_zyon.depositar(50.00)
conta_zyon.depositar(100.00)
#print "Seu valo ŕ : #{saldo}"
conta_zyon.sacar(200.00)
#print "Seu valo ŕ : #{conta_zyon.@saldo}"
