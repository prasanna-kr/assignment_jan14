class StudentMailer < ApplicationMailer
    def student_mark_email(student)
        @student_mark = student
        mail(to: @student_mark.student.email, subject: "Your Marks" ) 
    end
end
