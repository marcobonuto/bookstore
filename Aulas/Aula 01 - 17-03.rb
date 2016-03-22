=begin 

--------------------------------------------------------------------------------------------------------------

Conceitos:

1) DRY: dont repeat yourself (nao se repita);

2) COC: Convention over configuration (convenções sobre configurações);(ex: primary key -> id, auto incrementável);

3) ORM: SQL; (aprender querys);

4) MVC (model, view, controllers);

	4.1) Controller: é quem recebe o que digitamos no navegador, descobre para onde que tem que enviar a requisição que fizemos e retorna o resultado de um modo que possa ser interpretado de alguma forma pelo navegador.

	4.2) Model: aciona URL pra falar com o banco de dados, sao as regras de negócio da aplicação. (geralmente tem mais peso que o controlador).

	4.3) Views: sao as telas da aplicaçao.

Criando a aplicação

5) Precisamos de um runtime JavaScript, instalar o nodejs

sudo apt-get install nodejs

6) Estrutura da aplicaçao:

	6.1) Tudo que esta contido no assets, quando for para produção, o rails cria um timestemp no arquivo pro navegador carregar de novo. (pra evitar problemas de cache);

	6.2) Application Controller: 

		protect_from_forgery with: :exception 
		# segurança, protege de ataques. 
	
	6.3) Helpers: auxiliam na geração as views. 

	6.4) Mailers: sao as views que criamos para e-mails (ex: pedidos mailer)
	
	6.5) Views / Application: é o meu layout. (header, footer)

	6.6) Bin -> sao os comandos que eu rodo na minha aplicação;

	6.7) Config -> configura sua aplicaçao de acordo com o ambiente que voce esta navegando;

	6.8) Db/Seeds -> alimenta o banco com informaçoes.

	6.9) Log -> mostra dinamicamente o log da aplicação em developmente;

	6.10) Public -> Views 404.html, 500.html, etc.

	6.11) Tests -> são os testes da aplicação;

	6.12) Rake -> tarefas que eu posso fazer no rails.. comandos: 
						 $	rake -T 
						 => mostra todos os comandos 
	           $ rake stats 
	           => mostra as estatisticas da aplicação


Criando o primeiro scaffold:

	$ rails g scaffold Person name:string email:string password:string born_at:date admin:boolean

