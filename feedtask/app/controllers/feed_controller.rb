class FeedController < ApplicationController
    def list
        @feeds = Feed.all
    end
    def show
        @feed = Feed.find(params[:id])
    end

    def new
        @feed = Feed.new
        @categories = Category.all
    end

    def feed_params
        params.require(:feeds).permit(:title, :text, :category_id)
    end

    def create
        @feed = Feed.new(feed_params)

        if @feed.save
            redirect_to :action => 'list'
        else
            @categories = Category.all
            render :action => 'new'
        end
    end
    
    def edit
        @feed = Feed.find(params[:id])
        @categories = Category.all
    end

    def feed_param
        params.require(:feed).permit(:title, :text, :category_id)
    end
    def update
        @feed = Feed.find(params[:id])
 
        if @feed.update_attributes(feed_param)
            redirect_to :action => 'show', :id => @feed
        else
            @categories = Category.all
            render :action => 'edit'
        end
    end
   
    def delete
        Feed.find(params[:id]).destroy
        redirect_to :action => 'list'
    end

    def show_categories
        @category = Category.find(params[:id])
    end

end
