class SubRequirementsController < ApplicationController
  before_action :set_sub_requirement, only: [:show, :edit, :update, :destroy]

  # GET /sub_requirements
  # GET /sub_requirements.json
  def index
    @sub_requirements = SubRequirement.all
  end

  # GET /sub_requirements/1
  # GET /sub_requirements/1.json
  def show
  end

  # GET /sub_requirements/new
  def new
    @sub_requirement = SubRequirement.new
  end

  # GET /sub_requirements/1/edit
  def edit
  end

  # POST /sub_requirements
  # POST /sub_requirements.json
  def create
    @sub_requirement = SubRequirement.new(sub_requirement_params)

    respond_to do |format|
      if @sub_requirement.save
        format.html { redirect_to @sub_requirement, notice: 'Sub requirement was successfully created.' }
        format.json { render :show, status: :created, location: @sub_requirement }
      else
        format.html { render :new }
        format.json { render json: @sub_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_requirements/1
  # PATCH/PUT /sub_requirements/1.json
  def update
    respond_to do |format|
      if @sub_requirement.update(sub_requirement_params)
        format.html { redirect_to @sub_requirement, notice: 'Sub requirement was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_requirement }
      else
        format.html { render :edit }
        format.json { render json: @sub_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_requirements/1
  # DELETE /sub_requirements/1.json
  def destroy
    @sub_requirement.destroy
    respond_to do |format|
      format.html { redirect_to sub_requirements_url, notice: 'Sub requirement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_requirement
      @sub_requirement = SubRequirement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_requirement_params
      params.require(:sub_requirement).permit(:requirement_id, :part, :description)
    end
end
