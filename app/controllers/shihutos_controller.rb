class ShihutosController < ApplicationController
  def new
    @shihuto = Shihuto.new
  end

  def create
    @shihuto = Shihuto.new(shihuto_params)
    binding.pry
    if @shihuto.save
      redirect_to root_path, notice: "シフトを登録しました"
    else
      flash.now[:alert] = "シフトの登録に失敗しました"
      render :new
    end
  end

  private

  def shihuto_params
    params.permit(:year1,:year2,:year3,:year4,:year5,:year6,:year7,:month1,:month2,:month3,:month4,:month5,:month6,:month7,:day1,:day2,:day3,:day4,:day5,:day6,:day7,:note1,:note2,:note3,:note4,:note5,:note6,:note7).merge(user_id: current_user.id)
  end
end
