class OddjobsController < ApplicationController
  def index
    @oddjobs = Oddjob.all

    respond_to do |format|
       format.html 
       format.json { render :json => @oddjobs }
    end
  end

  def new
    @oddjob = Oddjob.new
  end
  
  def create
    @oddjob = Oddjob.new(params[:oddjob])

    respond_to do |format|
      if @oddjob.save
         format.html { redirect_to(@oddjob,
                       :notice => 'post was successfully created.') }
         format.json { render :json => @oddjob,
                       :status => :created, :location => @post }
      else
         format.html { render :action => 'new' }
         format.json { render :json => @oddjob.errors,
                       :status => :unprocessable_entity }
      end
    end
  end
  
  def show
    @oddjob = Oddjob.find(params[:id])
    
    respond_to do |format|
    format.html 
    format.json { render :json => @oddjob }
     end
  end
 
 def edit
    @oddjob = Oddjob.find(params[:id])
 end
 
 def update
    @oddjob = Oddjob.find(params[:id])
    
    respond_to do |format|
       if @oddjob.update_attributes(params[:id])
          format.html { redirect_to(@oddjob,
                        :notice => 'Post was successfully updated.') }
          format.json { head :no_content }
       else
          format.html { render :action => 'edit' }
          format.json { render :json => @oddjob.errors,
                        :status => :unprocessable_entity }
       end
    end
 end
 
 def destroy

   @oddjob = Oddjob.find(params[:id])
   @oddjob.destroy

   respond_to do |format|
     format.html { redirect_to oddjobs_url }
     format.json { head :no_content }
   end
 end
end
