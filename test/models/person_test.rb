require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  
  setup do
 		@person = people(:admin)
 	end

 	test "tem que ser válido sem alterações" do
 		assert @person.valid?
 	end

 	test "não pode ter nome vazio" do
 		@person.name = ""
 		assert !@person.valid? # tenha certeza que não é válido se o nome estiver vazio
 	end

 	test "não pode ter nome maior que 50 caracteres" do
 		@person.name = "*"*51
 		assert !@person.valid? # tenha certeza que não é válido se o nome for maior que 50 caracteres
 	end

 	test "a data de nascimento não pode ser vazia" do
 		@person.born_at = ""
 		assert !@person.valid? # tenha certeza que não é válido se a data de nascimento estiver vazia
 	end
 	
 	test "pode ter email vazio" do
 		@person.email = ""
 		assert @person.valid? # usei o 'allow_blank: true' e o 'allow_nil: true' no modelo
 	end

 	test "não pode ter email inválido" do
		@person.email = "foo@bar"
		assert !@person.valid? # usei a regex -> format: {with:/\A[a-zA-Z0-9_.-]+@([a-zA-Z0-9_ -]+\.)+[a-zA-Z]{2,4}\z/}
	end

	test "não pode ter email repetido" do
		new_person = Person.new(@person.attributes)
		assert !new_person.valid? # usei o 'uniqueness: true' no modelo
	end

	test "a data de nascimento não pode ser menor que 16 anos" do
		@person.born_at = Date.today - 15.years
		assert !@person.valid?
	end

	# test "a data de nascimento pode ser maior que 16 anos" do
	# 	@person.born_at = Date.today - 17.years
	# 	assert @person.valid?
	# end

	# Aula dia 29-03
	test "deve ter metodo para autenticacao" do
		assert_respond_to Person, :auth
	end

	test "nao deve retornar objeto se email errado" do
		assert_nil Person.auth("foo@bar","teste")
	end

	test "nao deve retornar objeto se senha errada" do
		assert_nil Person.auth(@person.email,"errada")
	end

	test "deve retornar objeto se email e senha corretos" do
		person = Person.auth(@person.email,"teste")
		assert_not_nil person
		assert_kind_of Person, person
		assert_equal @person.name, person.name
		assert_equal @person.email, person.email
	end
	
end

# assert -> tenha certeza

