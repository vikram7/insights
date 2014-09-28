class InsightsController < ApplicationController
  def index
    if params[:tag]
      @insights = Insight.order(created_at: :desc).tagged_with(params[:tag])
    else
      @insights = Insight.order(created_at: :desc)
    end
  end

  def new
    @insight = Insight.new
  end

  def create
    @insight = Insight.create(insight_params)
    @insight.user = current_user

    if @insight.body != ''
      flash[:notice] = "Insight added successfully!"
      redirect_to insights_path
    else
      flash[:notice] = "Insight not added successfully. Try again."
      render :new
    end
  end

  def update
    @insight = Insight.find(params[:id])
    @insight.tag_list.add(insight_params[:tag_list])

    if @insight.save
      flash[:notice] = "Tag(s) successfully added"
      redirect_to insights_path
    end
  end

  private
  def insight_params
    params.require(:insight).permit(:body, :tag_list)
  end
end

