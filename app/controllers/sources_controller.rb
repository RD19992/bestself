class SourcesController < ApplicationController
  before_action :current_user_must_be_source_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_source_user
    source = Source.find(params[:id])

    unless current_user == source.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @sources = Source.all

    render("sources/index.html.erb")
  end

  def show
    @source = Source.find(params[:id])

    render("sources/show.html.erb")
  end

  def new
    @source = Source.new

    render("sources/new.html.erb")
  end

  def create
    @source = Source.new

    @source.user_id = params[:user_id]

    save_status = @source.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/sources/new", "/create_source"
        redirect_to("/sources")
      else
        redirect_back(:fallback_location => "/", :notice => "Source created successfully.")
      end
    else
      render("sources/new.html.erb")
    end
  end

  def edit
    @source = Source.find(params[:id])

    render("sources/edit.html.erb")
  end

  def update
    @source = Source.find(params[:id])

    save_status = @source.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/sources/#{@source.id}/edit", "/update_source"
        redirect_to("/sources/#{@source.id}", :notice => "Source updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Source updated successfully.")
      end
    else
      render("sources/edit.html.erb")
    end
  end

  def destroy
    @source = Source.find(params[:id])

    @source.destroy

    if URI(request.referer).path == "/sources/#{@source.id}"
      redirect_to("/", :notice => "Source deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Source deleted.")
    end
  end
end
