class PaySheetsController < ApplicationController
  # GET /pay_sheets
  # GET /pay_sheets.json
  def index
    @pay_sheets = PaySheet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pay_sheets }
    end
  end

  # GET /pay_sheets/1
  # GET /pay_sheets/1.json
  def show
    @pay_sheet = PaySheet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pay_sheet }
    end
  end

  # GET /pay_sheets/new
  # GET /pay_sheets/new.json
  def new
    @pay_sheet = PaySheet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pay_sheet }
    end
  end

  # GET /pay_sheets/1/edit
  def edit
    @pay_sheet = PaySheet.find(params[:id])
  end

  # POST /pay_sheets
  # POST /pay_sheets.json
  def create
    @pay_sheet = PaySheet.new(params[:pay_sheet])

    respond_to do |format|
      if @pay_sheet.save
        format.html { redirect_to @pay_sheet, notice: 'Pay sheet was successfully created.' }
        format.json { render json: @pay_sheet, status: :created, location: @pay_sheet }
      else
        format.html { render action: "new" }
        format.json { render json: @pay_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pay_sheets/1
  # PUT /pay_sheets/1.json
  def update
    @pay_sheet = PaySheet.find(params[:id])

    respond_to do |format|
      if @pay_sheet.update_attributes(params[:pay_sheet])
        format.html { redirect_to @pay_sheet, notice: 'Pay sheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pay_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pay_sheets/1
  # DELETE /pay_sheets/1.json
  def destroy
    @pay_sheet = PaySheet.find(params[:id])
    @pay_sheet.destroy

    respond_to do |format|
      format.html { redirect_to pay_sheets_url }
      format.json { head :no_content }
    end
  end
end
