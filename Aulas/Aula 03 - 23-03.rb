=begin 

Consultando em lotes:

Temos alguns métodos para auxiliar em consultas com muitos resultados retornados, sendo que o
primeiro que vamos ver é o find_each , que utiliza o find_in_batches para retornar os registros
em “lotes” com tamanho default de 1000 registros, ou de acordo com o que for especificado.
Vamos testar o comportamento padrão:

	$ Person.find_each { |person| puts person.name }

Existe mais exemplos no livro, a partir da pag. 44

PS: quando tiver uma consulta pra mais de mil registros verificar o find_in_batches, pg 45

Atualizando registros: podemos atualizar um registro usando o método save 

	$ person.admin = true
	=> true

	$ person.save
	=> true

Ou utilizando update_attribute ou update_attributes , para atualizar vários atributos de uma vez, enviando uma Hash :

	$ person.update_attribute(:admin, true)

Apagando registros

	$ person.destroy

Sandbox:

Podemos trabalhar dentro do console usando um modo em que quaisquer alterações que fizermos serão descartadas no final. Para isso, devemos enviar a opção --sandbox junto com o comando para abrir o console:

	$ rails c --sandbox

PS: Tomem cuidado que em certas situações o sandbox deixa o banco de dados em estado locked , ou seja, travado para determinadas operações.

SQL Injection: Todas as formas acima que vimos em que enviamos um argumento para um marcador na consulta
nos previne de ataques que utilizam uma técnica chamada SQL Injection 56, onde são enviados
códigos SQL maliciosos para as nossas consultas.