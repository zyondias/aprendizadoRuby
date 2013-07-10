class Banco

	attr_accessor :contas
	def imprimir_saldo
		#for conta in @contas
		#puts conta.saldo
		@contas.each do |conta|
			puts conta.saldo
		end
	end
	
	
	def pessoas_do_banco
		#retornando lista de  nomes de pessoas
		@contas.map(&:pessoa).map(&:nome)
	end

	def 

	def contas_mue
	   mulheres=[]
	   #usuando metodo que recebe codigo como parametro
	   relatorio do |conta|#recebendo parametro
	   mulheres << contas.sexo	
	   end
	  mulheres
	end
	
	def contas_feminitas
	#selecionando pessoas do sexo femi  e trazendo a lista de saldo e sumando
	 @contas.select{|c|c.pessoa.sexo == "f"}.map{|c|c.saldo}.sum
	end
	
	#metodo para receber bloco de codigo é com & 
	def relatorio (&bloco) #posso nao explicitar que vou receber um bloco qualquer 
				#metodo pode receber um bloco e para pegar dentro do codigo é so usuar o YIELD
		for conta in @contas
		#pegando o bloco de codigo enviado no parametro
		bloco.call(conta)
		end
	end

end



