#!/usr/bin/env ruby

require 'rubygems'
require 'rack'
require 'yaml'

infinity = proc{|env| [200, {"Content-Type" => "text/html"}, [env.inspect.to_yaml]]}

builder = Rack::Builder.new do
  use Rack::CommonLogger
 
  map '/' do
    run infinity
  end

  map '/version' do
    map '/' do
      run proc {|env| [200, {"Content-Type" => "text/html"}, ["infinity 0.1"]]}
    end

    map '/last' do
      run proc {|env| [200, {"Content-Type" => "text/html"}, ["infinity beta 0.2"]]}
    end
  end
end

Rack::Handler::WEBrick.run builder, Port: 9292