class TeethController < ApplicationController
  before_action :set_tooth, only: [:show, :edit, :update, :destroy]

  
  def comparison
    a = Tooth.find(1)
    b = Tooth.find(2)
    random  = rand(0..1)
    if random == 0
      @pic_one = a 
      @pic_two = b
    else
      @pic_one = b 
      @pic_two = a
    end
  end

  def thanks
    
  end

  def update_times
    @tooth = Tooth.find(params[:id])
    
    @tooth.update_attributes(
      times: (@tooth.times+1)
    )

    redirect_to thanks_teeth_path
  end

  def index
    @teeth = Tooth.all
  end

  
  
  def show
  end

  
  def new
    @tooth = Tooth.new
  end

  
  def edit
  end

  
  
  def create
    @tooth = Tooth.new(tooth_params)

    respond_to do |format|
      if @tooth.save
        format.html { redirect_to @tooth, notice: 'Tooth was successfully created.' }
        format.json { render :show, status: :created, location: @tooth }
      else
        format.html { render :new }
        format.json { render json: @tooth.errors, status: :unprocessable_entity }
      end
    end
  end

  
  
  def update
    

    respond_to do |format|
      if @tooth.update(tooth_params)
        format.html { redirect_to @tooth, notice: 'Tooth was successfully updated.' }
        format.json { render :show, status: :ok, location: @tooth }
      else
        format.html { render :edit }
        format.json { render json: @tooth.errors, status: :unprocessable_entity }
      end
    end
  end

  
  
  def destroy
    @tooth.destroy
    respond_to do |format|
      format.html { redirect_to teeth_url, notice: 'Tooth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_tooth
      @tooth = Tooth.find(params[:id])
    end

    
    def tooth_params
      params.require(:tooth).permit(:pic_name, :times)
    end
end
