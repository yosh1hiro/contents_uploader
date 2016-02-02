class ApplicationController < Sinatra::Base

  set :views, File.expand_path('../../views', __FILE__)

  before '/*' do
    @title = "まごチャンネル"
  end
  
  configure :production, :development do
    enable :logging
  end
end
