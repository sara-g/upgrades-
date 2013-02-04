class LineitemsController < ApplicationController
  # GET /lineitems
  # GET /lineitems.json
  def index
    @lineitems = Lineitem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lineitems }
    end
  end

  # GET /lineitems/1
  # GET /lineitems/1.json
  def show
    @lineitem = Lineitem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lineitem }
    end
  end

  # GET /lineitems/new
  # GET /lineitems/new.json
  def new
    @lineitem = Lineitem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lineitem }
    end
  end


  def edit
    @lineitem = Lineitem.find(params[:id])
  end



  def create
    @event = Event.find(1)
    profile = Profile.find(params[:profile_id])
      if params[:upgrade_id]
        upgrade = Upgrade.find(params[:upgrade_id])
        @upgrade = @event.add_upgrade(upgrade.id)
      end
    @line_item = @event.add_profile(profile.id)
    
    if @line_item.save
         flash[:success] = "Cool. Now what about fries and a soda wit dat?" 
         redirect_to event_path(@event)
    else
        render 'new'
    end
    
  end



  def update
    @lineitem = Lineitem.find(params[:id])

    respond_to do |format|
      if @lineitem.update_attributes(params[:lineitem])
        format.html { redirect_to @lineitem, notice: 'Lineitem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lineitems/1
  # DELETE /lineitems/1.json
  def destroy
    @lineitem = Lineitem.find(params[:id])
    @lineitem.destroy

    respond_to do |format|
      format.html { redirect_to lineitems_url }
      format.json { head :no_content }
    end
  end
end
