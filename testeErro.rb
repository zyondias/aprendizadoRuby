print "Digite um numero:"
numero = gets.to_i

begin
	resultado = 100/numero
rescue
	puts "numero digitando e  invalido"
end
