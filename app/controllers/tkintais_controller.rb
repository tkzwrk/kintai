class TkintaisController < ApplicationController
  def new
    @tkintai = Tkintai.new(tdate: Time.current)
  end

  def create
    @tkintai = Tkintai.new(kintai_params)
    if @tkintai.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def kintai_params
    params.require(:tkintai).permit(:tdate).merge(user_id: current_user.id)
  end
end
