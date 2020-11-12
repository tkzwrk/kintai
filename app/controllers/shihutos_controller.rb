class ShihutosController < ApplicationController
  def new
    @shihuto = Shihuto.new
  end

  def create
    @shihuto = Shihuto.new(shihuto_params)
    if @shihuto.save
      redirect_to root_path, notice: "シフトを登録しました"
    else
      flash.now[:alert] = "シフトの登録に失敗しました"
      render :new
    end
  end

  private

  def shihuto_params
    params.require(:shihuto).permit(:year,:month,:day,:note).merge(user_id: current_user.id)
  end
end
