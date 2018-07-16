class MobileController < ApplicationController
  include RtcCardHandling

  def menu
    rtc_number = params[:number]
    unless rtc_number.nil?
      redirect_to mobile_card_path(rtc_number)
    end
  end

end