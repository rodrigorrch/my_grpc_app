# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: hello.proto for package ''
# Original file comments:
# hello.proto

require 'grpc'
require 'hello_pb'

module Greeter
  class Service

    include ::GRPC::GenericService

    self.marshal_class_method = :encode
    self.unmarshal_class_method = :decode
    self.service_name = 'Greeter'

    rpc :SayHello, ::HelloRequest, ::HelloReply
  end

  Stub = Service.rpc_stub_class
end