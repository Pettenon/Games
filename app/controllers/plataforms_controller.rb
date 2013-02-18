class PlataformsController < ApplicationController
  # GET /plataforms
  # GET /plataforms.json
  def index
    @plataforms = Plataform.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plataforms }
    end
  end

  # GET /plataforms/1
  # GET /plataforms/1.json
  def show
    @plataform = Plataform.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plataform }
    end
  end

  # GET /plataforms/new
  # GET /plataforms/new.json
  def new
    @plataform = Plataform.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plataform }
    end
  end

  # GET /plataforms/1/edit
  def edit
    @plataform = Plataform.find(params[:id])
  end

  # POST /plataforms
  # POST /plataforms.json
  def create
    @plataform = Plataform.new(params[:plataform])

    respond_to do |format|
      if @plataform.save
        format.html { redirect_to @plataform, notice: 'Plataform was successfully created.' }
        format.json { render json: @plataform, status: :created, location: @plataform }
      else
        format.html { render action: "new" }
        format.json { render json: @plataform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plataforms/1
  # PUT /plataforms/1.json
  def update
    @plataform = Plataform.find(params[:id])

    respond_to do |format|
      if @plataform.update_attributes(params[:plataform])
        format.html { redirect_to @plataform, notice: 'Plataform was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plataform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plataforms/1
  # DELETE /plataforms/1.json
  def destroy
    @plataform = Plataform.find(params[:id])
    @plataform.destroy

    respond_to do |format|
      format.html { redirect_to plataforms_url }
      format.json { head :no_content }
    end
  end
end
