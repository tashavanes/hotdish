defmodule Hotdish.Router do
  use Trot.Router
  import Plug.Conn

#test if service is up
  get "/" do 
     {200, %{status: "Service is running", id: "11345", cat: "Leo"}}
  end

#retrieve a cat
 get "/cat" do
  {200, %{"cat" => "Leo", "home" => "barn", "story" =>  "feral"}}
end

# Sets the status code to 201 with a text body
get "/text/body" do
  {201, "Thank you for your question."}
end

# Sets status code to 200 with a JSON-encoded body
get "/json" do
  %{"hyper" => "social"}
end

# Sets the status code to 201 with a JSON-encoded body
get "/json/code" do
  {201, %{"hyper" => "social"}}
end

# Pattern match part of the path into a variable
get "/presenter/:name" do
  "The presenter is #{name}"
end

# Redirect the incoming request
get "/redirect" do
  {:redirect, "/text/body"}
end

#send a file bastard
get "/grad" do
Plug.Conn.send_file(conn, 200, "priv/static/grad.jpg") 
end

end


