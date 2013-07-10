
#criando um array de curso da caleum
caelum = [
#dentro do array crio arrays de modulos de curso
{ :ruby => 'rr-71', :java => 'fj-11'},
{ :ruby => 'rr-75', :java => 'fj-21'}
]

#crio uma lista de curso so de ruby e depois percoro a lista para imprimir
caelum.sort_by{|curso| curso[:ruby]}.each do |curso|
	puts "Curso de ROR na caelum : #{curso[:ruby]}"
end

caelum.sort_by{|curso| curso[:ruby]}.each do |curso|
	next if curso[:ruby]=='rr-71'#passando para o proxdimo item se o curso foir o 71
	puts "Curso de ror na caelum: #{ curso[ :ruby]}"
end
