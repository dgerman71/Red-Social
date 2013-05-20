class Perfil < ActiveRecord::Base
	belongs_to :user
  # attr_accessible :title, :body
  attr_accessible :nombre, :apellidos, :sexo, :fecha_nacimiento, :ciudad, :imagen

    CAMPOS = %w(nombre apellidos sexo ciudad)
	SEXO = ["Hombre","Mujer"]

	

	#TamaÃ±os
	validates :nombre,:apellidos,:ciudad, :length =>
	{
		:maximum=> 30,
		:minimum=> 6,
	},
	:format=> {:with=>/^[A-Za-z]*$/,
	:message=>"Solamente letras, por favor"}

	validates :ciudad, :length =>{:maximum=>30},
	:format=> {:with=>/^[A-Za-z]*$/,
	:message=>"Solamente letras, por favor"}



	validates :sexo, :inclusion=> {:in=>SEXO}
end



