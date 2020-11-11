class KintaikintaisController < ApplicationController
  def new
    @kintaikintai = Kintaikintai.new(sdate: Time.current)
  end
end
