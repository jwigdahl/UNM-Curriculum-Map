class TermPlansController < ApplicationController
  before_action :set_term_plan, only: [:show, :edit, :update, :destroy]

  # GET /term_plans
  # GET /term_plans.json
  def index
    @term_plans = TermPlan.all
  end

  # GET /term_plans/1
  # GET /term_plans/1.json
  def show
  end

  # GET /term_plans/new
  def new
    @term_plan = TermPlan.new
  end

  # GET /term_plans/1/edit
  def edit
  end

  # POST /term_plans
  # POST /term_plans.json
  def create
    @term_plan = TermPlan.new(term_plan_params)

    respond_to do |format|
      if @term_plan.save
        format.html { redirect_to @term_plan, notice: 'Term plan was successfully created.' }
        format.json { render action: 'show', status: :created, location: @term_plan }
      else
        format.html { render action: 'new' }
        format.json { render json: @term_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /term_plans/1
  # PATCH/PUT /term_plans/1.json
  def update
    respond_to do |format|
      if @term_plan.update(term_plan_params)
        format.html { redirect_to @term_plan, notice: 'Term plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @term_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /term_plans/1
  # DELETE /term_plans/1.json
  def destroy
    @term_plan.destroy
    respond_to do |format|
      format.html { redirect_to term_plans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_term_plan
      @term_plan = TermPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def term_plan_params
      params.require(:term_plan).permit(:degree_plan_id, :term_number)
    end
end
