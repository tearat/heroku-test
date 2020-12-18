require 'roda'
require 'json'

class App < Roda
  plugin :json

  route do |r|
    # GET / request
    r.root do
      { test: "hello" }
    end
  end
end

run App.freeze.app
