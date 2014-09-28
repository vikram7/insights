class InsightsController < ApplicationController
  def index
    @insights = Insight.order(created_at: :desc)
  end

  def new
    @insight = Insight.new
  end

  def create
    @insight = Insight.create(insight_params)
    @insight.user = current_user

    if @insight.save
      flash[:notice] = "Insight added successfully!"
      redirect_to insights_path
    else
      flash[:notice] = "Insight not added successfully. Try again."
      render :new
    end
  end

  private
  def insight_params
    params.require(:insight).permit(:body)
  end
end
