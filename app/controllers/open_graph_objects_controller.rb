class OpenGraphObjectsController < ApplicationController
  # GET /open_graph_objects
  # GET /open_graph_objects.json
  def index
    @open_graph_objects = OpenGraphObject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @open_graph_objects }
    end
  end

  # GET /open_graph_objects/1
  # GET /open_graph_objects/1.json
  def show
    @yammergration_yammer_staging_client_id = client_app_credentials('yammergration_yammer_staging_client_id')
    @yammergration_yammer_production_client_id = client_app_credentials('yammergration_yammer_production_client_id')

    @open_graph_object = OpenGraphObject.find(params[:id])
    if params[:staging]
      @staging = true
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @open_graph_object }
    end
  end

  # GET /open_graph_objects/new
  # GET /open_graph_objects/new.json
  def new
    @open_graph_object = OpenGraphObject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @open_graph_object }
    end
  end

  # GET /open_graph_objects/1/edit
  def edit
    @open_graph_object = OpenGraphObject.find(params[:id])
  end

  # POST /open_graph_objects
  # POST /open_graph_objects.json
  def create
    @open_graph_object = OpenGraphObject.new(params[:open_graph_object])
    logger.debug("something amazing")

    respond_to do |format|
      if @open_graph_object.save
        format.html { redirect_to @open_graph_objects, notice: 'Open graph object was successfully created.' }
        format.json { render json: @open_graph_object, status: :created, location: @open_graph_object }
      else
        format.html { render action: "new" }
        format.json { render json: @open_graph_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /open_graph_objects/1
  # PUT /open_graph_objects/1.json
  def update
    @open_graph_object = OpenGraphObject.find(params[:id])

    respond_to do |format|
      if @open_graph_object.update_attributes(params[:open_graph_object])
        format.html { redirect_to @open_graph_object, notice: 'Open graph object was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @open_graph_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_graph_objects/1
  # DELETE /open_graph_objects/1.json
  def destroy
    @open_graph_object = OpenGraphObject.find(params[:id])
    @open_graph_object.destroy

    respond_to do |format|
      format.html { redirect_to open_graph_objects_url }
      format.json { head :no_content }
    end
  end
end
