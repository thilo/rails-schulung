
class BeamTargetsController < ApplicationController
  # GET /beam_targets
  # GET /beam_targets.json
  def index
    @beam_targets = BeamTarget.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @beam_targets }
    end
  end

  # GET /beam_targets/1
  # GET /beam_targets/1.json
  def show
    @beam_target = BeamTarget.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @beam_target }
    end
  end

  # GET /beam_targets/new
  # GET /beam_targets/new.json
  def new
    @beam_target = BeamTarget.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @beam_target }
    end
  end

  # GET /beam_targets/1/edit
  def edit
    @beam_target = BeamTarget.find(params[:id])
  end

  # POST /beam_targets
  # POST /beam_targets.json
  def create
    @beam_target = BeamTarget.new(params[:beam_target])

    respond_to do |format|
      if @beam_target.save
        format.html { redirect_to @beam_target, notice: 'Beam target was successfully created.' }
        format.json { render json: @beam_target, status: :created, location: @beam_target }
      else
        format.html { render action: "new" }
        format.json { render json: @beam_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /beam_targets/1
  # PUT /beam_targets/1.json
  def update
    @beam_target = BeamTarget.find(params[:id])

    respond_to do |format|
      if @beam_target.update_attributes(params[:beam_target])
        format.html { redirect_to @beam_target, notice: 'Beam target was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @beam_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beam_targets/1
  # DELETE /beam_targets/1.json
  def destroy
    @beam_target = BeamTarget.find(params[:id])
    @beam_target.destroy

    respond_to do |format|
      format.html { redirect_to beam_targets_url }
      format.json { head :no_content }
    end
  end
end
