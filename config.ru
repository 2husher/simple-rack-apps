require 'yaml'

run Proc.new {|env| [200, {"Content-Type" => "text/html"}, [env.inspect.to_yaml]]}