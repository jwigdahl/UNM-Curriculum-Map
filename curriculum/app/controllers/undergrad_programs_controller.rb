class UndergradProgramsController < ApplicationController
  before_action :set_undergrad_program, only: [:show, :edit, :update, :destroy]

  # GET /undergrad_programs
  # GET /undergrad_programs.json
  def index
    @undergrad_programs = UndergradProgram.all
  end

  # GET /undergrad_programs/1
  # GET /undergrad_programs/1.json
  def show
  end

  # GET /undergrad_programs/new
  def new
    @undergrad_program = UndergradProgram.new
  end

  # GET /undergrad_programs/1/edit
  def edit
  end

  # POST /undergrad_programs
  # POST /undergrad_programs.json
  def create
    @undergrad_program = UndergradProgram.new(undergrad_program_params)

    respond_to do |format|
      if @undergrad_program.save
        format.html { redirect_to @undergrad_program, notice: 'Undergrad program was successfully created.' }
        format.json { render action: 'show', status: :created, location: @undergrad_program }
      else
        format.html { render action: 'new' }
        format.json { render json: @undergrad_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /undergrad_programs/1
  # PATCH/PUT /undergrad_programs/1.json
  def update
    respond_to do |format|
      if @undergrad_program.update(undergrad_program_params)
        format.html { redirect_to @undergrad_program, notice: 'Undergrad program was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @undergrad_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /undergrad_programs/1
  # DELETE /undergrad_programs/1.json
  def destroy
    @undergrad_program.destroy
    respond_to do |format|
      format.html { redirect_to undergrad_programs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_undergrad_program
      @undergrad_program = UndergradProgram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def undergrad_program_params
      params.require(:undergrad_program).permit(:dept_id, :name, :degree, :org_code)
    end
end
