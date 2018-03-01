class FlagsController < ApplicationController
  def index
    @flags = Flag.all

    render("flags/index.html.erb")
  end

  def show
    @flag = Flag.find(params[:id])

    render("flags/show.html.erb")
  end

  def new
    @flag = Flag.new

    render("flags/new.html.erb")
  end

  def create
    @flag = Flag.new

    @flag.user_id = params[:user_id]
    @flag.comment_id = params[:comment_id]

    save_status = @flag.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/flags/new", "/create_flag"
        redirect_to("/flags")
      else
        redirect_back(:fallback_location => "/", :notice => "Flag created successfully.")
      end
    else
      render("flags/new.html.erb")
    end
  end

  def edit
    @flag = Flag.find(params[:id])

    render("flags/edit.html.erb")
  end

  def update
    @flag = Flag.find(params[:id])

    @flag.user_id = params[:user_id]
    @flag.comment_id = params[:comment_id]

    save_status = @flag.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/flags/#{@flag.id}/edit", "/update_flag"
        redirect_to("/flags/#{@flag.id}", :notice => "Flag updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Flag updated successfully.")
      end
    else
      render("flags/edit.html.erb")
    end
  end

  def destroy
    @flag = Flag.find(params[:id])

    @flag.destroy

    if URI(request.referer).path == "/flags/#{@flag.id}"
      redirect_to("/", :notice => "Flag deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Flag deleted.")
    end
  end
end
