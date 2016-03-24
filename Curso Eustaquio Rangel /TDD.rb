=begin

Basicamente o TDD se baseia em pequenos ciclos de repetições, onde para cada funcionalidade do sistema um teste é criado antes. Este novo teste criado inicialmente falha, já que ainda não temos a implementação da funcionalidade em questão e, em seguida, implementamos a funcionalidade para fazer o teste passar! Simples assim!

Calma! Não tão rápido pequeno samurai! Não podemos simplesmente escrever outro teste só por que já temos um teste passando. É preciso que esta funcionalidade que acabamos de escrever seja refatorada, ou seja, ela precisa passar por um pequeno banho de "boas práticas” de Desenvolvimento de Software. Estas boas práticas que garantirão um software com código mais limpo, coeso e menos acoplado.

Ciclo de desenvolvimento -> Red, Green, Refactor. Ou seja:

	1) Escrevemos um Teste que inicialmente não passa (Red)
  2) Adicionamos uma nova funcionalidade do sistema
	3) Fazemos o Teste passar (Green)
	4)  Refatoramos o código da nova funcionalidade (Refactoring)
	5) Escrevemos o próximo Teste

Nós temos, neste tipo de estratégia, um feedback rápido sobre a nova funcionalidade e sobre uma possível quebra de outra funcionalidade do sistema. Assim tempos muito mais segurança para as refatorações e muito mais segurança na adição de novas funcionalidades.

Entendo um pouco cada etapa:

-> Novo Teste

Este primeiro passo é o pilar do TDD (não brinca!). Temos uma nova funcionalidade do sistema e fazemos o processo inverso ao tradicional: Testamos e Codificamos e não Codificamos e Testamos.

No primeiro momento isto parece estranho, esquisito ou feio, mas não é. O fato de termos um teste primeiro que o código garante que daremos passos simples para a codificação da funcionalidade, afim de fazer o teste passar, ou seja, seremos "obrigados" a escrever uma implementação simples para que o teste passe.

No começo esta forma não é muito intuitiva e o gráfico de aprendizagem não é lá um dos melhores, mas com o tempo e aperfeiçoamento da técnica, esta será a forma mais intuitiva e segura de desenvolver que você encontrará.

-> Teste Falhando

	Neste momento, acabamos de escrever o teste e não temos a implementação. Óbvio que o teste falhará, pois ele espera uma resposta que ainda não temos implementada em lugar algum. Com um Teste falhando na nossa frente, temos um único objetivo na vida: Fazê-lo passar! Passamos para a próxima fase.

-> Nova funcionalidade

	Já ouviu falar no KISS? "Keep It Simple, Stupid", ou seja, devemos escrever o nosso código da forma mais simples possível. Código limpo, simples e funcional! Esta é a idéia.

	Assim, neste momento vamos esquecer as Boas práticas, a Inversão de Controle, os Patterns, etc e  vamos codificar a nossa nova funcionalidade da forma mais simples possível para fazer o nosso Teste passar. Neste momento estamos simplesmente escrevendo alguma funcionalidade que faça o teste passar (sem quebrar outros testes) e também teremos segurança na Refatoração deste mesmo código daqui a alguns minutos.

	Vale lembrar também daquela sequência ótima de desenvolvimento que devemos ter na cabeça: Código que funciona -> Código simples e limpo -> Código rápido

	Agora com a nova funcionalidade implementada e o teste passando, seguimos para a próxima fase:

-> Refatoração

	Agora sim! Você purista da programação que condenou a minha geração por eu ter falado para abandonarmos as boas práticas de desenvolvimento, agora sim pode ficar tranquilo!

	Neste momento é que vamos analisar melhor aquele código que fizemos simplesmente para o nosso Teste passar. É neste momento que retiramos duplicidade, renomeamos variáveis, extraímos métodos, extraímos Classes, extraímos Interfaces, usamos algum padrão conhecido, etc. É neste momento que podemos deixar o nosso código simples e claro e o melhor de tudo: Funcional!

	Temos um teste agora que indicará qualquer passo errado que podemos dar ao melhorar o nosso código. E não somente este código que acabamos de escrever. Após algum tempo com TDD, será criada uma Suite de Testes, onde poderemos refatorar sem a preocupação de atingir negativamente algum código já existente, pois já teremos Testes indicando qualquer falha.

	Já ouviu falar no SRP? "Single Responsibility Principle". Este princípio nos diz que devemos ter somente um motivo para modificar uma classe. Ou seja, ele fala sobre termos uma classe com somente uma responsabilidade.

	Por que estou lembrando disso? Por que o TDD nos "força" a termos classes seguindo esta regra, pois facilita os Testes. Não podemos refatorar um trecho de código e quebrar vários Testes. Assim, este princípio acaba sendo utilizado, mesmo que você não perceba.

	Pronto! Como acabamos a refatoração, o próximo passo é o próximo Teste!



Esclarecendo...

No último passo aplicamos a Refatoração, que é a melhoria do código. Isto se faz necessário(leia-se bom) sim em relação às boas práticas já conhecidas, porém com TDD isso se torna obrigatório!

Por que? Simples! Para escrevermos um Teste, escrevemos uma funcionalidade, mas esta funcionalidade não pode quebrar outro Teste. Ao quebrar outro Teste, temos que fazer um pequeno esforço para que o nosso novo código esteja menos acoplado ao código restante.

Viu o que aconteceu? Trocamos a forma de desenvolvimento. Em vez de projetarmos a nossa aplicação e tentarmos escrever um código (levando horas) pensando nas mudanças no futuro, já pensando nos Patterns, regras e etc, escrevemos um código de Teste que guiou a simplicidade do nosso código, que em seguida refatoramos para deixá-lo menos acoplado e com uma maior coesão, fazendo com que este código seja facilmente modificado no futuro, seja para correção de problemas ou para novas funcionalidades.

