class BillingsController < ApplicationController
  # GET /billings
  # GET /billings.json
  def index
    @billings = Billing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @billings }
    end
  end

  # GET /billings/1
  # GET /billings/1.json
  def show
    @billing = Billing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @billing }
    end
  end

  # GET /billings/new
  # GET /billings/new.json
  def new
    @billing = Billing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @billing }
    end
  end

  # GET /billings/1/edit
  def edit
    @billing = Billing.find(params[:id])
  end

  # POST /billings
  # POST /billings.json
  def create
    @billing = Billing.new(params[:billing])

    respond_to do |format|
      if @billing.save
        format.html { redirect_to @billing, :notice => 'Billing was successfully created.' }
        format.json { render :json => @billing, :status => :created, :location => @billing }
      else
        format.html { render :action => "new" }
        format.json { render :json => @billing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /billings/1
  # PUT /billings/1.json
  def update
    @billing = Billing.find(params[:id])

    respond_to do |format|
      if @billing.update_attributes(params[:billing])
        format.html { redirect_to @billing, :notice => 'Billing was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @billing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /billings/1
  # DELETE /billings/1.json
  def destroy
    @billing = Billing.find(params[:id])
    @billing.destroy

    respond_to do |format|
      format.html { redirect_to billings_url }
      format.json { head :ok }
    end
  end
end
