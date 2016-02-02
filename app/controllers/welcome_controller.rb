class WelcomeController < ApplicationController
  helpers do
    def app_root
      "#{env['rack.url_scheme']}://#{env['HTTP_HOST']}#{env['SCRIPT_NAME']}"
    end
  end

  get '/' do
    erb :index
  end
end
