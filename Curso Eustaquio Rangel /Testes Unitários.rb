=begin

-----------------------	
-- Testes Unitários  --
-----------------------

Testes unitários são meios de testar e depurar pequenas partes do seu código, para verificar se não tem alguma coisa errada acontecendo, “modularizando” a checagem de erros. Um sistema é feito de várias “camadas” ou “módulos”, e os testes unitários tem que ser rodados nessas camadas. Eles podem testar validações, processamento, domínios etc, mas lembre-se que um teste unitário deve testar somente um pedaço de código (de onde veio o nome unitário).

Extreme Programming (XP): é um conjunto de práticas de programação que visam a simplicidade, praticidade, qualidade e flexibilidade de seu sistema. Os testes de unidade fazem parte dessa metodologia de programação.

Temos o método setup, que é o “construtor” do teste, e vai ser chamado para todos os testes, não somente uma vez.


	$ def setup
			@calculadora = Calculadora.new
		end

Rodando os testes:

	$ rake test:units


Modernizando os testes

A partir da versão 1.9.x de Ruby, podemos contar com o framework de testes Minitest.

Fixtunes: As fixtures se encontram no diretório test/fixtures e são criadas automaticamente quando criamos um scaffold ou um modelo:

As fixtures são carregadas para os testes funcionais e unitários, em três passos:

	1. Os dados da tabela correspondente da fixture são removidos todos da tabela;
	2. Os dados das fixtures são carregados na tabela;
	3. Os dados das fixture são disponibilizados em uma variável para o caso de quisermos acessar diretamente.