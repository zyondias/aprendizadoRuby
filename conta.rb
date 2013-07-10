class Conta

	#deixa disponivel para get
	attr_reader :saldo
	
	#metodo "cosntrutor" inicialize
	def initialize
		@saldo ||=0		
	end	
 	
	def saca(valor)
	 operacao << -valor
	 @saldo -= valor
	end
	def depositar(valor)
	 raise "Não  faz isso " if valor < 0 #retornando erro se o valor de
	# depoisto for menor q 0 direto na consele sem nenhum traamento

	 operacao << valor
	 @saldo += valor
	end

	private #tudo pra baixo dessa linha sera privado
        def operacao
		#se nao tem valor inicializa uma aarry vazia
		@operacao ||= []
	end
	
	
end

#hash facilicar a passagem de parametro para metodo
meu_hash = {
	#"chave"=>"valor",
	#com siglos :nome - com siglos é mais performatico
	:nome  => "ZAZA",
	:nascimento  =>23432432 ,
	:telefone  => "222ss"
}
#imprimir
for chave, valor in meu_hash
 puts chave, valor
end
#outra forma de fazer has
hs = {
re: 299210 ,
empresa: "IRS"
}
puts hs[:re]
puts hs[:empresa]
#fim do teste de hash

zyon = Conta.new
puts zyon.saldo

#traatndo erro 
begin	
	zyon.depositar(-100)
rescue => e
	puts "algo errado #{e}"

end

puts zyon.saldo

#array
lista = Array.new

#passando valor para array
lista << "OI"
lista << "z"
lista << 555
lista << Conta.new

#percorrer o array

for i in (0 .. lista.size)
	#imprinendo com index possitivo
	puts lista[i]
	#imprineod com index negativo vai pegar de traz pra frente
 	puts lista[-i]
end
