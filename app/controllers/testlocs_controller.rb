class TestlocsController < ApplicationController
  # GET /testlocs
  # GET /testlocs.xml
  def index
    @testlocs = Testloc.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @testlocs }
    end
  end

  # GET /testlocs/1
  # GET /testlocs/1.xml
  def show
    @testloc = Testloc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @testloc }
    end
  end

  # GET /testlocs/new
  # GET /testlocs/new.xml
  def new
    @testloc = Testloc.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @testloc }
    end
  end

  # GET /testlocs/1/edit
  def edit
    @testloc = Testloc.find(params[:id])
  end

  # POST /testlocs
  # POST /testlocs.xml
  def create
    @testloc = Testloc.new(params[:testloc])

    respond_to do |format|
      if @testloc.save
        format.html { redirect_to(@testloc, :notice => 'Testloc was successfully created.') }
        format.xml  { render :xml => @testloc, :status => :created, :location => @testloc }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @testloc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /testlocs/1
  # PUT /testlocs/1.xml
  def update
    @testloc = Testloc.find(params[:id])

    respond_to do |format|
      if @testloc.update_attributes(params[:testloc])
        format.html { redirect_to(@testloc, :notice => 'Testloc was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @testloc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /testlocs/1
  # DELETE /testlocs/1.xml
  def destroy
    @testloc = Testloc.find(params[:id])
    @testloc.destroy

    respond_to do |format|
      format.html { redirect_to(testlocs_url) }
      format.xml  { head :ok }
    end
  end
end
