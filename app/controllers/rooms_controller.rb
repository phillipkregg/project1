class RoomsController < ApplicationController
  
  before_filter :get_zone
  
  # GET /rooms
  # GET /rooms.xml
  def index
    @rooms = @zone.rooms.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rooms }
    end
  end

  # GET /rooms/1
  # GET /rooms/1.xml
  def show
    @room = @zone.rooms.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @room }
    end
  end

  # GET /rooms/new
  # GET /rooms/new.xml
  def new
    @room = @zone.rooms.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @room }
    end
  end

  # GET /rooms/1/edit
  def edit
    @room = @zone.rooms.find(params[:id])
  end

  # POST /rooms
  # POST /rooms.xml
  def create
    @room = @zone.rooms.build(params[:room])

    respond_to do |format|
      if @room.save
        format.html { redirect_to([@zone, @room], :notice => 'Room was successfully created.') }
        format.xml  { render :xml => @room, :status => :created, :location => @room }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rooms/1
  # PUT /rooms/1.xml
  def update
    @room = @zone.rooms.find(params[:id])

    respond_to do |format|
      if @room.update_attributes(params[:room])
        format.html { redirect_to([@zone, @room], :notice => 'Room was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.xml
  def destroy
    @room = @zone.rooms.find(params[:id])
    @room.destroy

    respond_to do |format|
      format.html { redirect_to(rooms_url) }
      format.xml  { head :ok }
    end
  end
  
  
  
  
  protected
  
  def get_zone
    @zone = Zone.find_by_id(params[:zone_id])
    redirect_to root_path unless @zone
  end
  
  
  
  
  
  
end
