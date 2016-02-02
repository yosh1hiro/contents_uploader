class ApplicationController < Sinatra::Base

  set :views, File.expand_path('../../views', __FILE__)

  helpers do
    def app_root
      "#{env['rack.url_scheme']}://#{env['HTTP_HOST']}#{env['SCRIPT_NAME']}"
    end
  end

  before '/*' do
    @title = "まごチャンネル"
  end
  
  configure :production, :development do
    enable :logging
  end
end
