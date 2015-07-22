class SnapsController < ApplicationController
  def index
    @cat = Cat.find(params[:cat_id])
    @cat.snaps = Snap.all
  end

  def show
    @snap = Snap.find(params[:id])
  end

  def new
    @snap = Snap.new
  end

  def create
    @snap = Snap.new(snap_params)

    respond_to do |format|
      if @snap.save
        format.html { redirect_to @snap, notice: 'Snap was successfully created.' }
        format.json { render :show, status: :created, location: @snap }
      else
        format.html { render :new }
        format.json { render json: @snap.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @snap = Snap.find(params[:id])
    @snap.destroy
    respond_to do |format|
      format.html { redirect_to snaps_url, notice: 'Snap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def snap_params
    params[:snap]
  end
end
