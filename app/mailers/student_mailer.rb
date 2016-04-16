class StudentMailer < ApplicationMailer
	def send_mail(resource)
		@student = resource
		@url = ("http://localhost:3000/students/#{@student.id}/edit")
		mail(to: @student.email, subject: "Add your name to finish profile")
	end
end
