require "sinatra"

get "/" do
  erb :index
end

post "/convert" do
  temperature_in_c = params[:temperature].to_f
  temperature_in_f = temperature_in_c * 9 / 5 + 32
  temperature_in_f.to_s
end
