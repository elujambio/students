class StudentMailer < ApplicationMailer
	def send_mail(resource)
		@student = resource
		@url = ("http://protected-beach-10022.herokuapp.com/#{@student.id}/edit")
		mail(to: @student.email, subject: "Add your name to finish profile")
	end
end
