class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def new
    @request = current_user.requests.build
    @users = User.all
    @skills = Skill.all
  end

  def create
    @request = current_user.requests.build(request_params)
    @request.skill = Skill.find(@request.skill).skill_name
    if @request.save
      redirect_to requests_url
    end
  end

  private

    def request_params
      params.require(:request).permit(:skill)
    end
end
