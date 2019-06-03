class NewsfeedsController < ApplicationController
  

  # GET /newsfeeds
  # GET /newsfeeds.json
  def index
    @newsfeeds = Newsfeed.all
  end

  # GET /newsfeeds/1
  # GET /newsfeeds/1.json
  def show
    @newsfeed = Newsfeed.find(params[:id])
  end

  # GET /newsfeeds/new
  def new
    @newsfeed = Newsfeed.new
   #@subjects = Subject.all
  end

  # GET /newsfeeds/1/edit
  def edit
    @newsfeed = Newsfeed.find(params[:id])
  end

  # POST /newsfeeds
  # POST /newsfeeds.json
  def create
    @newsfeed = Newsfeed.new(newsfeed_params)
    if @newsfeed.save
        redirect_to :action => 'index'
    else
        @categories = Category.all
        render :action => 'new'
    end

  end

  # PATCH/PUT /newsfeeds/1
  # PATCH/PUT /newsfeeds/1.json
  def update
    @newsfeed = Newsfeed.find(params[:id])
	
    if @newsfeed.update_attributes(newsfeed_param)
       redirect_to :action => 'show', :id => @book
    else
       @categories = Category.all
       render :action => 'edit'
    end
    
  end
  def newsfeed_param
    params.require(:newsfeed).permit(:title, :text, :category_id)
 end

  # DELETE /newsfeeds/1
  # DELETE /newsfeeds/1.json
  def destroy
    Newsfeed.find(params[:id]).destroy
      redirect_to :action => 'index'
 
    
  end
  def show_newsfeeds
    @categories = Category.find(params[:id])
 end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def newsfeed_params
      #params.fetch(:newsfeed, {})
      params.require(:newsfeed).permit(:title, :text, :category_id)
    end
end
