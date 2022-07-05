class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/employees" do
    employees = Employee.all
    employees.to_json
  end

  get '/employees/:id' do
    daily_note = Employee.find(params[:id])
    daily_note.to_json(include: :dailyNotes)
  end
  
  post "/employees" do
    employee = Employee.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email_address: params[:email_address]
    )
    employee.to_json
  end

  get "/daily_notes" do
    daily_notes = DailyNote.all.order(:created_on)
    daily_notes.to_json(include: :employee)
  end

  get '/daily_notes/:id' do
    daily_note = DailyNote.find(params[:id])
    daily_note.to_json
  end

end
