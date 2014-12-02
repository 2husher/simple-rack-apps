#!/usr/bin/env ruby

require 'rubygems'
require 'rack'
require 'yaml'

infinity = proc{|env| [200, {"Content-Type" => "text/html"}, [env.inspect.to_yaml]]}

Rack::Handler::WEBrick.run infinity, Port: 9292