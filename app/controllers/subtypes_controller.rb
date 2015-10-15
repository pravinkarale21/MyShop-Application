class SubtypesController < ApplicationController
  # GET /subtypes
  # GET /subtypes.json
  def index
    @subtypes = Subtype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subtypes }
    end
  end

  # GET /subtypes/1
  # GET /subtypes/1.json
  def show
    @subtype = Subtype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subtype }
    end
  end

  # GET /subtypes/new
  # GET /subtypes/new.json
  def new
    @subtype = Subtype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subtype }
    end
  end

  # GET /subtypes/1/edit
  def edit
    @subtype = Subtype.find(params[:id])
  end

  # POST /subtypes
  # POST /subtypes.json
  def create
    @subtype = Subtype.new
    @subtype.subtype = params[:subtype]
    @subtype.type_id = params[:Type][:Type]  

    respond_to do |format|
      if @subtype.save
        format.html { redirect_to @subtype, notice: 'Subtype was successfully created.' }
        format.json { render json: @subtype, status: :created, location: @subtype }
      else
        format.html { render action: "new" }
        format.json { render json: @subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subtypes/1
  # PUT /subtypes/1.json
  def update
    @subtype = Subtype.find(params[:id])

    respond_to do |format|
      if @subtype.update_attributes(params[:subtype])
        format.html { redirect_to @subtype, notice: 'Subtype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subtypes/1
  # DELETE /subtypes/1.json
  def destroy
    @subtype = Subtype.find(params[:id])
    @subtype.destroy

    respond_to do |format|
      format.html { redirect_to subtypes_url }
      format.json { head :no_content }
    end
  end
end
