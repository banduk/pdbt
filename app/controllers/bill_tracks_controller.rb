class BillTracksController < ApplicationController
  # GET /bill_tracks
  # GET /bill_tracks.json
  def index
    @bill_tracks = BillTrack.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bill_tracks }
    end
  end

  # GET /bill_tracks/1
  # GET /bill_tracks/1.json
  def show
    @bill_track = BillTrack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bill_track }
    end
  end

  # GET /bill_tracks/new
  # GET /bill_tracks/new.json
  def new
    @bill_track = BillTrack.new
    @bills = Bill.find(:all)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bill_track }
    end
  end

  # GET /bill_tracks/1/edit
  def edit
    @bill_track = BillTrack.find(params[:id])
    @bills = Bill.find(:all)
  end

  # POST /bill_tracks
  # POST /bill_tracks.json
  def create
    @bill_track = BillTrack.new(params[:bill_track])

    respond_to do |format|
      if @bill_track.save
        format.html { redirect_to @bill_track, notice: 'Bill track was successfully created.' }
        format.json { render json: @bill_track, status: :created, location: @bill_track }
      else
        format.html { render action: "new" }
        format.json { render json: @bill_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bill_tracks/1
  # PUT /bill_tracks/1.json
  def update
    @bill_track = BillTrack.find(params[:id])

    respond_to do |format|
      if @bill_track.update_attributes(params[:bill_track])
        format.html { redirect_to @bill_track, notice: 'Bill track was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bill_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_tracks/1
  # DELETE /bill_tracks/1.json
  def destroy
    @bill_track = BillTrack.find(params[:id])
    @bill_track.destroy

    respond_to do |format|
      format.html { redirect_to bill_tracks_url }
      format.json { head :no_content }
    end
  end
end
