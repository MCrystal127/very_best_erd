class CuisineTagsController < ApplicationController
  def index
    @cuisine_tags = CuisineTag.page(params[:page]).per(10)

    render("cuisine_tags/index.html.erb")
  end

  def show
    @cuisine_tag = CuisineTag.find(params[:id])

    render("cuisine_tags/show.html.erb")
  end

  def new
    @cuisine_tag = CuisineTag.new

    render("cuisine_tags/new.html.erb")
  end

  def create
    @cuisine_tag = CuisineTag.new

    @cuisine_tag.cuisine_type = params[:cuisine_type]

    save_status = @cuisine_tag.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/cuisine_tags/new", "/create_cuisine_tag"
        redirect_to("/cuisine_tags")
      else
        redirect_back(:fallback_location => "/", :notice => "Cuisine tag created successfully.")
      end
    else
      render("cuisine_tags/new.html.erb")
    end
  end

  def edit
    @cuisine_tag = CuisineTag.find(params[:id])

    render("cuisine_tags/edit.html.erb")
  end

  def update
    @cuisine_tag = CuisineTag.find(params[:id])

    @cuisine_tag.cuisine_type = params[:cuisine_type]

    save_status = @cuisine_tag.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/cuisine_tags/#{@cuisine_tag.id}/edit", "/update_cuisine_tag"
        redirect_to("/cuisine_tags/#{@cuisine_tag.id}", :notice => "Cuisine tag updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Cuisine tag updated successfully.")
      end
    else
      render("cuisine_tags/edit.html.erb")
    end
  end

  def destroy
    @cuisine_tag = CuisineTag.find(params[:id])

    @cuisine_tag.destroy

    if URI(request.referer).path == "/cuisine_tags/#{@cuisine_tag.id}"
      redirect_to("/", :notice => "Cuisine tag deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Cuisine tag deleted.")
    end
  end
end
