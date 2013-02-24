class BusinessesController < ApplicationController

  def bootstrap
    render :json => {
      :categories => [
        :healthy_dining,
        :healthy_work,
        :community_benefits,
        :food_sourcing,
        :conversation
      ],
      :data => Business.all.collect do |bus|
        if cert = bus.certifications.first
          {
            :tid => bus.id,
            :name => bus.name,
            :score => cert.total_points,
            :healthy_dining => bootstrap_category_hash(cert.healthy_dining_points, 6),
            :healthy_work => bootstrap_category_hash(cert.healthy_work_points, 10),
            :community_benefits => bootstrap_category_hash(cert.community_benefits_points, 4),
            :food_sourcing => bootstrap_category_hash(cert.food_sourcing_points, 8),
            :conversation => bootstrap_category_hash(cert.conversation_points, 8)
          }
        end
      end.compact
    }
  end

  def bootstrap_category_hash(points, max)
    {
      :points => points || 0,
      :max_points => max,
      :percentage => (points ||0) / max
    }
  end

  def report
  end

  # GET /businesses
  # GET /businesses.json
  def index
    @businesses = Business.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @businesses }
    end
  end

  # GET /businesses/1
  # GET /businesses/1.json
  def show
    @business = Business.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @business }
    end
  end

  # GET /businesses/new
  # GET /businesses/new.json
  def new
    @business = Business.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @business }
    end
  end

  # GET /businesses/1/edit
  def edit
    @business = Business.find(params[:id])
  end

  # POST /businesses
  # POST /businesses.json
  def create
    @business = Business.new(params[:business])

    respond_to do |format|
      if @business.save
        format.html { redirect_to @business, notice: 'Business was successfully created.' }
        format.json { render json: @business, status: :created, location: @business }
      else
        format.html { render action: "new" }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /businesses/1
  # PUT /businesses/1.json
  def update
    @business = Business.find(params[:id])

    respond_to do |format|
      if @business.update_attributes(params[:business])
        format.html { redirect_to @business, notice: 'Business was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businesses/1
  # DELETE /businesses/1.json
  def destroy
    @business = Business.find(params[:id])
    @business.destroy

    respond_to do |format|
      format.html { redirect_to businesses_url }
      format.json { head :no_content }
    end
  end
end
