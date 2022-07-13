class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/employees" do
    employees = Employee.all
    employees.to_json(include: :dailyNotes)
  end

  get "/employees/:id" do
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

  patch '/employees/:id' do
    employee = Employee.find(params[:id])
    employee.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email_address: params[:email_address]
    )
    employee.to_json
  end

  delete "/employees/:id" do
    employee = Employee.find(params[:id])
    employee.destroy
    employee.to_json
  end

  get "/daily_notes" do
    daily_notes = DailyNote.all.order(:created_on)
    daily_notes.to_json(include: :employee)
  end

  get '/daily_notes/:id' do
    daily_note = DailyNote.find(params[:id])
    daily_note.to_json(include: :employee)
  end

  post "/daily_notes" do
    daily_note = DailyNote.create(
      coffee_notes: params[:coffee_notes],
      needs: params[:needs],
      items_86ed: params[:items_86ed],
      pastry_soldout: params[:pastry_soldout],
      leftover_pastry: params[:leftover_pastry],
      miscellaneous: params[:miscellaneous],
      created_on: params[:created_on],
      employee_id: params[:employee_id],
    )
    daily_note.to_json 
  end

  patch '/daily_notes/:id' do
    daily_note = DailyNote.find(params[:id])
    daily_note.update(
      coffee_notes: params[:coffee_notes],
      needs: params[:needs],
      items_86ed: params[:items_86ed],
      pastry_soldout: params[:pastry_soldout],
      leftover_pastry: params[:leftover_pastry],
      miscellaneous: params[:miscellaneous],
    )
    daily_note.to_json
  end

  delete "/daily_notes/:id" do
    daily_note = DailyNote.find(params[:id])
    daily_note.destroy
    daily_note.to_json
  end

end
