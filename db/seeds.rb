# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# ------------------------------------------------
# -   Arquivo para alimentar o banco de dados.   -
# ------------------------------------------------

# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
		
		marco = Person.find_or_create_by(name: "marco",
																		 email: "marcobonuto@yahoo.com",
																		 password: 123456,
																		 born_at: "2016-01-01",
																		 admin: false)

		# no terminal, rodar: rake db:seed