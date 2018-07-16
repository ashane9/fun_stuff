class RtcController < ApplicationController
  include RtcCardHandling
  
  def menu
    rtc_number = params[:number]
    unless rtc_number.nil?
      redirect_to card_path(rtc_number)
    end
  end

end
