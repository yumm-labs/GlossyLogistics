class ShipmentsController < ApplicationController
  # GET /shipments
  # GET /shipments.json
  def index
    @shipments = Shipment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shipments }
    end
  end

  # GET /shipments/1
  # GET /shipments/1.json
  def show
    @shipment = Shipment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shipment }
    end
  end

  # GET /shipments/new
  # GET /shipments/new.json
  def new
    @shipment = Shipment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shipment }
    end
  end

  # GET /shipments/1/edit
  def edit
    @shipment = Shipment.find(params[:id])
  end

  # POST /shipments
  # POST /shipments.json
  def create
    shipment_args = params[:shipment].clone 
    shipment_args[:industry_id] = shipment_args[:industry_id].first
    shipment_args[:destination_id] = shipment_args[:destination_id].first
    
    @shipment = Shipment.new(shipment_args)

    respond_to do |format|
      if @shipment.save
        format.html { redirect_to @shipment, notice: 'Shipment was successfully created.' }
        format.json { render json: @shipment, status: :created, location: @shipment }
      else
        format.html { render action: "new" }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shipments/1
  # PUT /shipments/1.json
  def update
    @shipment = Shipment.find(params[:id])

    respond_to do |format|
      if @shipment.update_attributes(params[:shipment])
        format.html { redirect_to @shipment, notice: 'Shipment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipments/1
  # DELETE /shipments/1.json
  def destroy
    @shipment = Shipment.find(params[:id])
    @shipment.destroy

    respond_to do |format|
      format.html { redirect_to shipments_url }
      format.json { head :no_content }
    end
  end
  
  
  
   def search_by_industry_name
    @indus =   Industry.where("name ilike ?", "%#{params[:tag]}%").select("id,name")
    industries = []
    @indus.each do |a|
      industries << { 'key' => a.id.to_s, 'value' => a.name}
    end
    respond_to do |format|
      format.json { render json: industries.to_json }
    end
  end
  
  def search_by_destination_name
    @des =   Destination.where("name ilike ?", "%#{params[:tag]}%").select("id,name")
    destinations = []
    @des.each do |a|
      destinations << { 'key' => a.id.to_s, 'value' => a.name }
    end
    respond_to do |format|
      format.json { render json: destinations.to_json }
    end
  end
  
end
