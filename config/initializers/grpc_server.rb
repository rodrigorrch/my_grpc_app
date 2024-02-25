$LOAD_PATH.unshift File.expand_path('.', 'lib')

require 'grpc'
require 'hello_services_pb'

Dir.glob(Rails.root.join('app', 'services', '**', '*.rb')).each do |file|
  require_relative Rails.root.join(file)
end

def main
  server = GRPC::RpcServer.new
  server.add_http2_port('0.0.0.0:50057', :this_port_is_insecure)
  server.handle(::GreeterService)

  # Start the server
  # server.run_till_terminated
  server.run_till_terminated_or_interrupted([1, 'int', 'SIGQUIT'])
end

main
