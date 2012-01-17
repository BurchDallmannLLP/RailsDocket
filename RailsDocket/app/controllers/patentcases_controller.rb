class PatentcasesController < ApplicationController
  # GET /patentcases
  # GET /patentcases.json
  def index
    @patentcases = Patentcase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @patentcases }
    end
  end

  # GET /patentcases/1
  # GET /patentcases/1.json
  def show
    @patentcase = Patentcase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @patentcase }
    end
  end

  # GET /patentcases/new
  # GET /patentcases/new.json
  def new
    @patentcase = Patentcase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @patentcase }
    end
  end

  # GET /patentcases/1/edit
  def edit
    @patentcase = Patentcase.find(params[:id])
  end

  # POST /patentcases
  # POST /patentcases.json
  def create
    @patentcase = Patentcase.new(params[:patentcase])

    respond_to do |format|
      if @patentcase.save
        format.html { redirect_to @patentcase, :notice => 'Patentcase was successfully created.' }
        format.json { render :json => @patentcase, :status => :created, :location => @patentcase }
      else
        format.html { render :action => "new" }
        format.json { render :json => @patentcase.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /patentcases/1
  # PUT /patentcases/1.json
  def update
    @patentcase = Patentcase.find(params[:id])

    respond_to do |format|
      if @patentcase.update_attributes(params[:patentcase])
        format.html { redirect_to @patentcase, :notice => 'Patentcase was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @patentcase.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /patentcases/1
  # DELETE /patentcases/1.json
  def destroy
    @patentcase = Patentcase.find(params[:id])
    @patentcase.destroy

    respond_to do |format|
      format.html { redirect_to patentcases_url }
      format.json { head :ok }
    end
  end
end
