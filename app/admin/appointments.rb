ActiveAdmin.register Appointment do
  permit_params :student_id, :teacher_id, :meeting_time
end
