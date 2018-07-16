module RtcCardHandling
  extend ActiveSupport::Concern

  def card_details
    @card = Card.find(params[:number])
  end

  def update
    @card = Card.find(params[:number])
    if @card.update_attributes(card_params)
      flash[:success] = 'Changes were successfully saved.'
      redirect_to @card
    end
  end

  private
  def card_params
    params.require(:card).permit(:summary, :card_type, :status, :points, :owner, :blocked, :iteration)
  end
end