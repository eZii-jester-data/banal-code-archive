class AbstractCanonicalCodesController < ApplicationController
  before_action :set_abstract_canonical_code, only: [:show, :edit, :update, :destroy]

  # GET /abstract_canonical_codes
  # GET /abstract_canonical_codes.json
  def index
    @abstract_canonical_codes = AbstractCanonicalCode.all
  end

  # GET /abstract_canonical_codes/1
  # GET /abstract_canonical_codes/1.json
  def show
  end

  # GET /abstract_canonical_codes/new
  def new
    @abstract_canonical_code = AbstractCanonicalCode.new
  end

  # GET /abstract_canonical_codes/1/edit
  def edit
  end

  # POST /abstract_canonical_codes
  # POST /abstract_canonical_codes.json
  def create
    @abstract_canonical_code = AbstractCanonicalCode.new(abstract_canonical_code_params)

    respond_to do |format|
      if @abstract_canonical_code.save
        format.html { redirect_to @abstract_canonical_code, notice: 'Abstract canonical code was successfully created.' }
        format.json { render :show, status: :created, location: @abstract_canonical_code }
      else
        format.html { render :new }
        format.json { render json: @abstract_canonical_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abstract_canonical_codes/1
  # PATCH/PUT /abstract_canonical_codes/1.json
  def update
    respond_to do |format|
      if @abstract_canonical_code.update(abstract_canonical_code_params)
        format.html { redirect_to @abstract_canonical_code, notice: 'Abstract canonical code was successfully updated.' }
        format.json { render :show, status: :ok, location: @abstract_canonical_code }
      else
        format.html { render :edit }
        format.json { render json: @abstract_canonical_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abstract_canonical_codes/1
  # DELETE /abstract_canonical_codes/1.json
  def destroy
    @abstract_canonical_code.destroy
    respond_to do |format|
      format.html { redirect_to abstract_canonical_codes_url, notice: 'Abstract canonical code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abstract_canonical_code
      @abstract_canonical_code = AbstractCanonicalCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abstract_canonical_code_params
      params.require(:abstract_canonical_code).permit(:code, :sha_digest)
    end
end
