# This file is used by Rack-based servers to start the application.

use Rack::Static,
    :urls => ["/images", "/js", "/css"],
    :root => "public"

run Rack::File.new("public")

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application
