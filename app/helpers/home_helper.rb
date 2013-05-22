#encoding: utf-8
module HomeHelper
	def ciudad_usuario(usuario)
		if usuario.perfil
			usuario.perfil.ciudad 
		else
			"Sin especificar"
		end
	end
end
