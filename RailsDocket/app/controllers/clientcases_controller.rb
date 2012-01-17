class ClientcasesController < ApplicationController
  # GET /clientcases
  # GET /clientcases.json
  def index
    @clientcases = Clientcase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clientcases }
    end
  end

  # GET /clientcases/1
  # GET /clientcases/1.json
  def show
    @clientcase = Clientcase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @clientcase }
    end
  end

  # GET /clientcases/new
  # GET /clientcases/new.json
  def new
    @clientcase = Clientcase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @clientcase }
    end
  end

  # GET /clientcases/1/edit
  def edit
    @clientcase = Clientcase.find(params[:id])
  end

  # POST /clientcases
  # POST /clientcases.json
  def create
    @clientcase = Clientcase.new(params[:clientcase])

    respond_to do |format|
      if @clientcase.save
        format.html { redirect_to @clientcase, :notice => 'Clientcase was successfully created.' }
        format.json { render :json => @clientcase, :status => :created, :location => @clientcase }
      else
        format.html { render :action => "new" }
        format.json { render :json => @clientcase.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clientcases/1
  # PUT /clientcases/1.json
  def update
    @clientcase = Clientcase.find(params[:id])

    respond_to do |format|
      if @clientcase.update_attributes(params[:clientcase])
        format.html { redirect_to @clientcase, :notice => 'Clientcase was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @clientcase.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clientcases/1
  # DELETE /clientcases/1.json
  def destroy
    @clientcase = Clientcase.find(params[:id])
    @clientcase.destroy

    respond_to do |format|
      format.html { redirect_to clientcases_url }
      format.json { head :ok }
    end
  end
end
