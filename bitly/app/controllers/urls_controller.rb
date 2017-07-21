class UrlsController < ApplicationController

def create
  @url = Url.new(url_params)
  if @url.save
    redirect_to root_path
  else
    @message = "URL no creada"
    @urls = Url.all
    render :template => 'welcome/home'
  end
end

def url
  url = Url.find_by(short_url: params[:url])
  url.click_count += 1
  url.save!

  redirect_to url.long_url
end

private

  def url_params
    params.require(:url).permit(:long_url)
  end
  
end
