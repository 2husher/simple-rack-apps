#!/usr/bin/env ruby

require 'rubygems'
require 'rack'
require 'yaml'

infinity = proc{|env| [200, {"Content-Type" => "text/html"}, [env.inspect.to_yaml]]}

builder = Rack::Builder.new

builder.run infinity

Rack::Handler::WEBrick.run builder, Port: 9292