class WelcomeController < ApplicationController
  def index
    @insight = Insight.new
    if params[:tag]
      @insights = Insight.order(created_at: :desc).tagged_with(params[:tag])
    else
      @insights = Insight.order(created_at: :desc)
    end
  end
end
