class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Thanks!" }.to_json
  end

  get "/employee" do
    employees = Employee.all
    employees.to_json
  end

end
