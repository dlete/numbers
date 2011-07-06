class CashReceiptsController < ApplicationController
  # GET /cash_receipts
  # GET /cash_receipts.xml
  def index
    load_auxiliary_data
    @cash_receipts = CashReceipt.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cash_receipts }
    end
  end

  # GET /cash_receipts/1
  # GET /cash_receipts/1.xml
  def show
    load_auxiliary_data
    @cash_receipt = CashReceipt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cash_receipt }
    end
  end

  # GET /cash_receipts/new
  # GET /cash_receipts/new.xml
  def new
    load_auxiliary_data
    @cash_receipt = CashReceipt.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cash_receipt }
    end
  end

  # GET /cash_receipts/1/edit
  def edit
    load_auxiliary_data
    @cash_receipt = CashReceipt.find(params[:id])
  end

  # POST /cash_receipts
  # POST /cash_receipts.xml
  def create
    @cash_receipt = CashReceipt.new(params[:cash_receipt])

    respond_to do |format|
      if @cash_receipt.save
        format.html { redirect_to(@cash_receipt, :notice => 'Cash receipt was successfully created.') }
        format.xml  { render :xml => @cash_receipt, :status => :created, :location => @cash_receipt }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cash_receipt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cash_receipts/1
  # PUT /cash_receipts/1.xml
  def update
    @cash_receipt = CashReceipt.find(params[:id])

    respond_to do |format|
      if @cash_receipt.update_attributes(params[:cash_receipt])
        format.html { redirect_to(@cash_receipt, :notice => 'Cash receipt was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cash_receipt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cash_receipts/1
  # DELETE /cash_receipts/1.xml
  def destroy
    @cash_receipt = CashReceipt.find(params[:id])
    @cash_receipt.destroy

    respond_to do |format|
      format.html { redirect_to(cash_receipts_url) }
      format.xml  { head :ok }
    end
  end

  private
  def load_auxiliary_data
    @accounts = Account.order("name ASC")
  end

end
