class KintaikintaisController < ApplicationController
  def new
    @kintaikintai = Kintaikintai.new(sdate: Time.current)
  end

  def create
    @kintaikintai = Kintaikintai.new(kintai_params)
    if @kintaikintai.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def kintai_params
    params.require(:kintaikintai).permit(:sdate).merge(user_id: current_user.id)
  end
end
