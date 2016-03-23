=begin
	
Pluralização: é indicado que os modelos sejam criados ja é inglês. Alguns exemplos:

"person".pluralize
=> "people"

"people".singularize
=> "person"

"city".pluralize
=> "cities"

"countries".singularize
=> "country"

"book".pluralize
=> "books"

"livro".pluralize
=> "livros"

"paises".singularize
=> "paise" 

end

Assete Pipeline: é uma forma de otimizar os arquivos CSS e JavaScript da nossa aplicação, concatenando-os e comprimindo-os (por exemplo, removendo espaços em branco que para nós, desenvolvedores, são essenciais para melhor compreensão do código, mas que não fazem a menor diferença para o navegador), entregando aos navegadores compridos utilizando o algoritmo Gzip 52 (suportado na maioria dos servidores web e navegadores) e também para a utilização de escrever esses arquivos a partir de outros recursos como o Sass e o CoffeeScript (que geram, respectivamente, CSS e JavaScript padrões para os navegadores, a partir de sintaxes próprias e diferenciadas), com o intuito de aumentar a produtividade.

Resumindo: tudo que esta dentro de assets, ele vai otimizar na hora de entregar, inclusive imagens!

Comando pra rodar em produção: 

	$ rake assets:precompile

	