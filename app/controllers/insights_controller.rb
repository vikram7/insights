class InsightsController < ApplicationController

  def index
    if params[:search]
      @insights = Insight.search(params[:search]).order(created_at: :desc)
    elsif params[:tag]
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

    if @insight.save
      flash[:notice] = "Insight added successfully!"
      redirect_to root_path
    else
      flash[:notice] = "Insight not added successfully. Try again."
      render :new
    end
  end

  def update
    @insight = Insight.find(params[:id])
    insight_params[:tag_list].split(',').each do |tag|
      @insight.tag_list.add(tag)
    end

    if @insight.save
      flash[:notice] = "Tag(s) successfully added"
      redirect_to root_path
    end
  end

  private
  def insight_params
    params.require(:insight).permit(:body, :tag_list)
  end
end

