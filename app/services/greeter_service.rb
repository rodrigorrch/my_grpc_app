class GreeterService < Greeter::Service
  def say_hello(request, _call)
    HelloReply.new(message: "Hello, #{request.name}!")
  end
end
