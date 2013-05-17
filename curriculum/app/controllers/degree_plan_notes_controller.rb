class DegreePlanNotesController < ApplicationController
  before_action :set_degree_plan_note, only: [:show, :edit, :update, :destroy]

  # GET /degree_plan_notes
  # GET /degree_plan_notes.json
  def index
    @degree_plan_notes = DegreePlanNote.all
  end

  # GET /degree_plan_notes/1
  # GET /degree_plan_notes/1.json
  def show
  end

  # GET /degree_plan_notes/new
  def new
    @degree_plan_note = DegreePlanNote.new
  end

  # GET /degree_plan_notes/1/edit
  def edit
  end

  # POST /degree_plan_notes
  # POST /degree_plan_notes.json
  def create
    @degree_plan_note = DegreePlanNote.new(degree_plan_note_params)

    respond_to do |format|
      if @degree_plan_note.save
        format.html { redirect_to @degree_plan_note, notice: 'Degree plan note was successfully created.' }
        format.json { render action: 'show', status: :created, location: @degree_plan_note }
      else
        format.html { render action: 'new' }
        format.json { render json: @degree_plan_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /degree_plan_notes/1
  # PATCH/PUT /degree_plan_notes/1.json
  def update
    respond_to do |format|
      if @degree_plan_note.update(degree_plan_note_params)
        format.html { redirect_to @degree_plan_note, notice: 'Degree plan note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @degree_plan_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /degree_plan_notes/1
  # DELETE /degree_plan_notes/1.json
  def destroy
    @degree_plan_note.destroy
    respond_to do |format|
      format.html { redirect_to degree_plan_notes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_degree_plan_note
      @degree_plan_note = DegreePlanNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def degree_plan_note_params
      params.require(:degree_plan_note).permit(:degree_plan_id, :note)
    end
end
