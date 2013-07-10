#encoding:utf-8

#estrutura de controle : if

nota = 2


if nota>7
	puts "Boa Nota!!"

elsif nota == 6
	puts "Sua nota foi 6"
  
else
	puts "Nota ruim!!"
end

#estrutura de controle: for

for i in (1..3)
	x = i
end
puts x

#expressao regular

puts /rio/ =~ "São Paulo" #nil
puts /Paulo/ =~ "são Paulo" #4
if /adfeeeo/ =~"São paulo"
 puts "tem paulo no nome"
elsif
 puts "nao tem paulo no nome"
end


#caso o restaurante nao esteja setado ira receber o valor passado
restaurante ||= "Fogo de Chao"
puts restaurante
