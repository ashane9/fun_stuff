class RtcController < ApplicationController

  def menu
    rtc_number = params[:number]
    unless rtc_number.nil?
      redirect_to card_path(rtc_number)
    end
  end

  def card_details
    @card = Card.find(params[:number])
  end

  def update
    rtc_number = params[:number]
    @card = Card.find(rtc_number)
    if @card.update_attributes(card_params)
      redirect_to card_path(rtc_number)
    else
      render 'card_details'
    end
  end

  private
  def card_params
    params.require(:card).permit(:summary, :card_type, :status, :points, :owner, :blocked, :iteration)
  end

end
