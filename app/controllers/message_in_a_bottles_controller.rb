class MessageInABottlesController < ApplicationController
  before_action :set_message_in_a_bottle, only: [:show, :edit, :update, :destroy]

  # GET /message_in_a_bottles
  # GET /message_in_a_bottles.json
  def index
    @message_in_a_bottles = MessageInABottle.all
  end

  # GET /message_in_a_bottles/1
  # GET /message_in_a_bottles/1.json
  def show
  end

  # GET /message_in_a_bottles/new
  def new
    @message_in_a_bottle = MessageInABottle.new
  end

  # GET /message_in_a_bottles/1/edit
  def edit
  end

  # POST /message_in_a_bottles
  # POST /message_in_a_bottles.json
  def create
    @message_in_a_bottle = MessageInABottle.new(message_in_a_bottle_params)

    respond_to do |format|
      if @message_in_a_bottle.save
        format.html { redirect_to @message_in_a_bottle, notice: 'Message in a bottle was successfully created.' }
        format.json { render :show, status: :created, location: @message_in_a_bottle }
      else
        format.html { render :new }
        format.json { render json: @message_in_a_bottle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /message_in_a_bottles/1
  # PATCH/PUT /message_in_a_bottles/1.json
  def update
    respond_to do |format|
      if @message_in_a_bottle.update(message_in_a_bottle_params)
        format.html { redirect_to @message_in_a_bottle, notice: 'Message in a bottle was successfully updated.' }
        format.json { render :show, status: :ok, location: @message_in_a_bottle }
      else
        format.html { render :edit }
        format.json { render json: @message_in_a_bottle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message_in_a_bottles/1
  # DELETE /message_in_a_bottles/1.json
  def destroy
    @message_in_a_bottle.destroy
    respond_to do |format|
      format.html { redirect_to message_in_a_bottles_url, notice: 'Message in a bottle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message_in_a_bottle
      @message_in_a_bottle = MessageInABottle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_in_a_bottle_params
      params.require(:message_in_a_bottle).permit(:text)
    end
end
