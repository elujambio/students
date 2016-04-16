class StudentMailer < ApplicationMailer
	def send_mail(resource)
		@student = resource
		# @url = ("localhost:3000/students/#{@student.id}/edit")
		@url = ("http://protected-beach-10022.herokuapp.com/students/#{@student.id}/edit")
		mail(to: @student.email, subject: "Add your name to finish profile")
	end
end
