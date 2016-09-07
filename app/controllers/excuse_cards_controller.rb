class ExcuseCardsController < ApplicationController
  before_action :set_excuse_card, only: [:show, :edit, :update, :destroy]

  # GET /excuse_cards
  # GET /excuse_cards.json
  def index
    @excuse_cards = ExcuseCard.all
  end

  # GET /excuse_cards/1
  # GET /excuse_cards/1.json
  def show
  end

  # GET /excuse_cards/new
  def new
    @excuse_card = ExcuseCard.new
  end

  # GET /excuse_cards/1/edit
  def edit
  end

  # POST /excuse_cards
  # POST /excuse_cards.json
  def create
    @excuse_card = ExcuseCard.new(excuse_card_params)

    respond_to do |format|
      if @excuse_card.save
        format.html { redirect_to @excuse_card, notice: 'Excuse card was successfully created.' }
        format.json { render :show, status: :created, location: @excuse_card }
      else
        format.html { render :new }
        format.json { render json: @excuse_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /excuse_cards/1
  # PATCH/PUT /excuse_cards/1.json
  def update
    respond_to do |format|
      if @excuse_card.update(excuse_card_params)
        format.html { redirect_to @excuse_card, notice: 'Excuse card was successfully updated.' }
        format.json { render :show, status: :ok, location: @excuse_card }
      else
        format.html { render :edit }
        format.json { render json: @excuse_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /excuse_cards/1
  # DELETE /excuse_cards/1.json
  def destroy
    @excuse_card.destroy
    respond_to do |format|
      format.html { redirect_to excuse_cards_url, notice: 'Excuse card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_excuse_card
      @excuse_card = ExcuseCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def excuse_card_params
      params.require(:excuse_card).permit(:check_in, :check_out, :excuse_id)
    end
end
