class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    if params[:search]
      @skills = Skill.search(params[:search])
    else
      @skills = Skill.all
    end
  end

  def search
    @users = User.all
  end
end
