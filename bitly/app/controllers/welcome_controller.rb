class WelcomeController < ApplicationController

def home
  @urls = Url.all
end

end
