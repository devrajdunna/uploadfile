class UserMailer < ApplicationMailer
	def registration_conformation(user)
		@user = user 
		mail(:to => user.email, :subject => 'Registred', :from =>'devrajdunna17@gmail.com')
	end
end
#default :from => 'devrajdunna17@gmail.com'
#def registration_conformation(user)
#		mail(:to => user.email, :subject => 'Registred')