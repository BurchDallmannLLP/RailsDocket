class CaseeventsController < ApplicationController
  # GET /caseevents
  # GET /caseevents.json
  def index
    @caseevents = Caseevent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @caseevents }
    end
  end

  # GET /caseevents/1
  # GET /caseevents/1.json
  def show
    @caseevent = Caseevent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @caseevent }
    end
  end

  # GET /caseevents/new
  # GET /caseevents/new.json
  def new
    @caseevent = Caseevent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @caseevent }
    end
  end

  # GET /caseevents/1/edit
  def edit
    @caseevent = Caseevent.find(params[:id])
  end

  # POST /caseevents
  # POST /caseevents.json
  def create
    @caseevent = Caseevent.new(params[:caseevent])

    respond_to do |format|
      if @caseevent.save
        format.html { redirect_to @caseevent, :notice => 'Caseevent was successfully created.' }
        format.json { render :json => @caseevent, :status => :created, :location => @caseevent }
      else
        format.html { render :action => "new" }
        format.json { render :json => @caseevent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caseevents/1
  # PUT /caseevents/1.json
  def update
    @caseevent = Caseevent.find(params[:id])

    respond_to do |format|
      if @caseevent.update_attributes(params[:caseevent])
        format.html { redirect_to @caseevent, :notice => 'Caseevent was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @caseevent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caseevents/1
  # DELETE /caseevents/1.json
  def destroy
    @caseevent = Caseevent.find(params[:id])
    @caseevent.destroy

    respond_to do |format|
      format.html { redirect_to caseevents_url }
      format.json { head :ok }
    end
  end
end
