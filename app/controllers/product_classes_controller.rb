class ProductClassesController < ApplicationController
  before_action :set_product_class, only: %i[ show edit update destroy ]

  # GET /product_classes or /product_classes.json
  def index
    @product_classes = ProductClass.all
  end

  # GET /product_classes/1 or /product_classes/1.json
  def show
  end

  # GET /product_classes/new
  def new
    @product_class = ProductClass.new
  end

  # GET /product_classes/1/edit
  def edit
  end

  # POST /product_classes or /product_classes.json
  def create
    @product_class = ProductClass.new(product_class_params)

    respond_to do |format|
      if @product_class.save
        format.html { redirect_to @product_class, notice: "Product class was successfully created." }
        format.json { render :show, status: :created, location: @product_class }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_classes/1 or /product_classes/1.json
  def update
    respond_to do |format|
      if @product_class.update(product_class_params)
        format.html { redirect_to @product_class, notice: "Product class was successfully updated." }
        format.json { render :show, status: :ok, location: @product_class }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_classes/1 or /product_classes/1.json
  def destroy
    @product_class.destroy

    respond_to do |format|
      format.html { redirect_to product_classes_path, status: :see_other, notice: "Product class was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_class
      @product_class = ProductClass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_class_params
      params.require(:product_class).permit(:name)
    end
end
