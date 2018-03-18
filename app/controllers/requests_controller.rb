class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def new
    @request = current_user.requests.build
  end

  def create
    @request = current_user.requests.build(request_params)
    if @request.save
      redirect_to requests_url
    end
  end

  private

    def request_params
      params.require(:request).permit(:skill)
    end
end
