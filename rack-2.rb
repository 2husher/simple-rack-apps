#!/usr/bin/env ruby

require 'rubygems'
require 'rack'
require 'yaml'

Rack::Handler::WEBrick.run proc{|env| [200, {"Content-Type" => "text/html"}, [env.inspect.to_yaml]]}, Port: 9292